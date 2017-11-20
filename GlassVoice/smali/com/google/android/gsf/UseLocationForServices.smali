.class public Lcom/google/android/gsf/UseLocationForServices;
.super Ljava/lang/Object;
.source "UseLocationForServices.java"


# static fields
.field public static final ACTION_SET_USE_LOCATION_FOR_SERVICES:Ljava/lang/String; = "com.google.android.gsf.action.SET_USE_LOCATION_FOR_SERVICES"

.field public static final EXTRA_DISABLE_USE_LOCATION_FOR_SERVICES:Ljava/lang/String; = "disable"

.field private static final GOOGLE_GEOLOCATION_ORIGINS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "UseLocationForServices"

.field public static final USE_LOCATION_FOR_SERVICES_NOT_SET:I = 0x2

.field public static final USE_LOCATION_FOR_SERVICES_OFF:I = 0x0

.field public static final USE_LOCATION_FOR_SERVICES_ON:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://www.google.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http://www.google.co.uk"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/UseLocationForServices;->GOOGLE_GEOLOCATION_ORIGINS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addGoogleOrigins(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "setting"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-static {p0}, Lcom/google/android/gsf/UseLocationForServices;->parseAllowGeolocationOrigins(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v4

    .line 203
    .local v4, "origins":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v0, Lcom/google/android/gsf/UseLocationForServices;->GOOGLE_GEOLOCATION_ORIGINS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 204
    .local v1, "googleOrigin":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 203
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    .end local v1    # "googleOrigin":Ljava/lang/String;
    :cond_0
    invoke-static {v4}, Lcom/google/android/gsf/UseLocationForServices;->formatAllowGeolocationOrigins(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static forceSetUseLocationForServices(Landroid/content/Context;Z)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 151
    invoke-static {p0, p1}, Lcom/google/android/gsf/UseLocationForServices;->setGoogleBrowserGeolocation(Landroid/content/Context;Z)V

    .line 152
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 153
    .local v0, "newState":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "use_location_for_services"

    invoke-static {v2, v3, v0}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    .line 155
    .local v1, "success":Z
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.gsf.settings.GoogleLocationSettings.UPDATE_LOCATION_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 157
    return v1

    .line 152
    .end local v0    # "newState":I
    .end local v1    # "success":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static formatAllowGeolocationOrigins(Ljava/util/Collection;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "origins":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 250
    .local v1, "origin":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 253
    .end local v1    # "origin":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getUseLocationForServices(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "use_location_for_services"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static parseAllowGeolocationOrigins(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 6
    .param p0, "setting"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 231
    .local v4, "origins":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 232
    const-string v5, "\\s+"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 233
    .local v3, "origin":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 234
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "origin":Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method public static registerUseLocationForServicesObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 169
    const-string/jumbo v1, "use_location_for_services"

    invoke-static {v1}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 171
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 172
    return-void
.end method

.method private static removeGoogleOrigins(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "setting"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-static {p0}, Lcom/google/android/gsf/UseLocationForServices;->parseAllowGeolocationOrigins(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v4

    .line 217
    .local v4, "origins":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v0, Lcom/google/android/gsf/UseLocationForServices;->GOOGLE_GEOLOCATION_ORIGINS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 218
    .local v1, "googleOrigin":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 217
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    .end local v1    # "googleOrigin":Ljava/lang/String;
    :cond_0
    invoke-static {v4}, Lcom/google/android/gsf/UseLocationForServices;->formatAllowGeolocationOrigins(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static setGoogleBrowserGeolocation(Landroid/content/Context;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "allow"    # Z

    .prologue
    .line 179
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 183
    .local v3, "resolver":Landroid/content/ContentResolver;
    const-string v4, "allowed_geolocation_origins"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "oldValue":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {v2}, Lcom/google/android/gsf/UseLocationForServices;->addGoogleOrigins(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "newValue":Ljava/lang/String;
    :goto_0
    const-string v4, "allowed_geolocation_origins"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 193
    .end local v1    # "newValue":Ljava/lang/String;
    .end local v2    # "oldValue":Ljava/lang/String;
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    :goto_1
    return-void

    .line 185
    .restart local v2    # "oldValue":Ljava/lang/String;
    .restart local v3    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    invoke-static {v2}, Lcom/google/android/gsf/UseLocationForServices;->removeGoogleOrigins(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 188
    .end local v2    # "oldValue":Ljava/lang/String;
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    .line 191
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v4, "UseLocationForServices"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set browser geolocation permissions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static setUseLocationForServices(Landroid/content/Context;Z)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 123
    if-eqz p1, :cond_1

    .line 124
    invoke-static {p0}, Lcom/google/android/gsf/UseLocationForServices;->getUseLocationForServices(Landroid/content/Context;)I

    move-result v1

    .line 125
    .local v1, "oldState":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.gsf.GOOGLE_APPS_LOCATION_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 134
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    .line 137
    .end local v1    # "oldState":I
    :goto_0
    return v2

    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gsf/UseLocationForServices;->forceSetUseLocationForServices(Landroid/content/Context;Z)Z

    move-result v2

    goto :goto_0
.end method
