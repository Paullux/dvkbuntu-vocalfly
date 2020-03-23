#include "myqmllauncher_plugin.h"
#include "qlauncher.h"
#include "global.h"

#include <qqml.h>

void MyQMLLauncherPlugin::registerTypes(const char *uri)
{
    // @uri org.dvkbuntu.dvkmenulauncher
    qmlRegisterType<QLauncher>(uri, 1, 0, "QLauncher");
}

