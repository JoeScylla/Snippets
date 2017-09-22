#Class Override Examples#

File: `src/PATH/TO/BUNDLE/Resources/config/pimcore/config.yml`

	pimcore:
		models:
			class_overrides:
				'Pimcore\Model\Object\News': 'AppBundle\Model\Object\News'
				'Pimcore\Model\Object\News\Listing': 'AppBundle\Model\Object\News\Listing'
				'Pimcore\Model\Object\Folder': 'AppBundle\Model\Object\Folder'
				'Pimcore\Model\Asset\Folder': 'AppBundle\Model\Asset\Folder'
				'Pimcore\Model\Asset\Image': 'AppBundle\Model\Asset\Image'
				'Pimcore\Model\Document\Page': 'AppBundle\Model\Document\Page'
				'Pimcore\Model\Document\Link': 'AppBundle\Model\Document\Link'
				'Pimcore\Model\Document\Listing': 'AppBundle\Model\Document\Listing'