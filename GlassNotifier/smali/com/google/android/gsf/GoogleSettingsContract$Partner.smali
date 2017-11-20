.class public final Lcom/google/android/gsf/GoogleSettingsContract$Partner;
.super Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable;
.source "GoogleSettingsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/GoogleSettingsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Partner"
.end annotation


# static fields
.field public static final CHROME_CLIENT_ID:Ljava/lang/String; = "chrome_client_id"

.field public static final CLIENT_ID:Ljava/lang/String; = "client_id"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_STORE_VERSION:Ljava/lang/String; = "data_store_version"

.field public static final LOGGING_ID2:Ljava/lang/String; = "logging_id2"

.field public static final MAPS_CLIENT_ID:Ljava/lang/String; = "maps_client_id"

.field public static final MARKET_CHECKIN:Ljava/lang/String; = "market_checkin"

.field public static final MARKET_CLIENT_ID:Ljava/lang/String; = "market_client_id"

.field public static final NETWORK_LOCATION_OPT_IN:Ljava/lang/String; = "network_location_opt_in"

.field public static final RLZ:Ljava/lang/String; = "rlz"

.field public static final SEARCH_CLIENT_ID:Ljava/lang/String; = "search_client_id"

.field public static final SHOPPER_CLIENT_ID:Ljava/lang/String; = "shopper_client_id"

.field public static final USE_LOCATION_FOR_ADS:Ljava/lang/String; = "use_location_for_ads"

.field public static final USE_LOCATION_FOR_SERVICES:Ljava/lang/String; = "use_location_for_services"

.field public static final VOICESEARCH_CLIENT_ID:Ljava/lang/String; = "voicesearch_client_id"

.field public static final WALLET_CLIENT_ID:Ljava/lang/String; = "wallet_client_id"

.field public static final YOUTUBE_CLIENT_ID:Ljava/lang/String; = "youtube_client_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 307
    const-string v0, "content://com.google.settings/partner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable;-><init>()V

    return-void
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 258
    invoke-static {p0, p1}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "valString":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 265
    .local v2, "value":I
    :goto_0
    return v2

    .end local v2    # "value":I
    :cond_0
    move v2, p2

    .line 261
    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/NumberFormatException;
    move v2, p2

    .restart local v2    # "value":I
    goto :goto_0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 274
    invoke-static {p0, p1}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "valString":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 281
    .local v2, "value":J
    :goto_0
    return-wide v2

    .end local v2    # "value":J
    :cond_0
    move-wide v2, p2

    .line 277
    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/NumberFormatException;
    move-wide v2, p2

    .restart local v2    # "value":J
    goto :goto_0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 209
    sget-object v0, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-static {p0, p1}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 222
    move-object v0, p2

    .line 225
    :cond_0
    return-object v0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 291
    sget-object v0, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionToken(Landroid/content/ContentResolver;)Ljava/lang/Object;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 300
    sget-object v0, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getVersionToken(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 249
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 237
    sget-object v0, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1, p2}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->putString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
