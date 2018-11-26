require 'rspec'
require 'page-object'
require 'require_all'
require_relative '../../common_info'

RUN_ENV = CONFIG_FILE_DIR_LIVE
RUN_CONFIG = YAML.load(File.read RUN_ENV)['live.sg']



HOME_URL = RUN_CONFIG['home_url']

require_relative 'test_account'
require_all PROJECT_DIR + "/lib/pages"

World(PageObject::PageFactory)

