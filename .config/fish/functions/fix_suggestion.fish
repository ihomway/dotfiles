function fix_suggestion --description 'Fix Project Suggestion'
	echo 'Start Replacing...'
	command sed -i.bak "s/x86_64-/arm64-/g" bili-universal/bilianime.xcodeproj/project.pbxproj
	echo 'Replacing Finished!'
end
