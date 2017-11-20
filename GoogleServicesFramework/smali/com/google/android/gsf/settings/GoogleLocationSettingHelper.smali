.class public Lcom/google/android/gsf/settings/GoogleLocationSettingHelper;
.super Ljava/lang/Object;
.source "GoogleLocationSettingHelper.java"


# static fields
.field private static final GOOGLE_SETTINGS_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "content://com.google.settings/partner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/settings/GoogleLocationSettingHelper;->GOOGLE_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public static getUseLocationForServices(Landroid/content/Context;)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 87
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 88
    .local v6, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 90
    .local v9, "stringValue":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/google/android/gsf/settings/GoogleLocationSettingHelper;->GOOGLE_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "value"

    aput-object v4, v2, v3

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v11, "use_location_for_services"

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 92
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 98
    :cond_0
    if-eqz v6, :cond_1

    .line 99
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 102
    :cond_1
    :goto_0
    if-nez v9, :cond_3

    .line 103
    const/4 v10, 0x2

    .line 111
    :goto_1
    return v10

    .line 95
    :catch_0
    move-exception v7

    .line 96
    .local v7, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v1, "GoogleLocationSettingHelper"

    const-string v2, "Failed to get \'Use My Location\' setting"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    if-eqz v6, :cond_1

    .line 99
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 98
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 99
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    .line 107
    :cond_3
    :try_start_2
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v10

    .local v10, "value":I
    goto :goto_1

    .line 108
    .end local v10    # "value":I
    :catch_1
    move-exception v8

    .line 109
    .local v8, "nfe":Ljava/lang/NumberFormatException;
    const/4 v10, 0x2

    .restart local v10    # "value":I
    goto :goto_1
.end method
