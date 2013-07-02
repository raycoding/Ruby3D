#!/usr/bin/env ruby

require 'rubygems'
require 'RMagick'
include Magick
begin
	raise "Pass proper Arguments" if (ARGV.empty? or ARGV.size<2)
	img_info = Magick::Image::read(ARGV[1]).first
	left_image = ImageList.new(ARGV[1])
	right_image = ImageList.new(ARGV[1])
	puts "*** Image Information ***"
	puts "    Image: #{ARGV[1]}"
	puts "    Format: #{img_info.format}"
	puts "    Geometry: #{img_info.columns}x#{img_info.rows}"
	puts "    Depth: #{img_info.depth} bits-per-pixel"
	puts "    Colors: #{img_info.number_colors}"
	puts "    Filesize: #{img_info.filesize}"
	puts "    Resolution: #{img_info.x_resolution.to_i}x#{img_info.y_resolution.to_i} "+
	"pixels/#{img_info.units == Magick::PixelsPerInchResolution ?
	"inch" : "centimeter"}"
	puts "*** Generating 3D Image ***"
	width=img_info.columns
	height=img_info.rows
	shift_by = ARGV[0].to_i
	left_image = left_image.crop(0, 0, (width-shift_by),height)
	right_image = right_image.crop(shift_by, 0, width, height)
	left_image = left_image.gamma_correct(1,0,0)
	right_image = right_image.gamma_correct(0,1,1)
	anaglyph = left_image.composite right_image, CenterGravity, ScreenCompositeOp
	anaglyph.write("3D_#{ARGV[1]}")
	puts "*** Done! ***"
rescue => e
	puts "Error: #{e.to_s}"
end

