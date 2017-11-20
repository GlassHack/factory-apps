.class public Lcom/google/glass/settings/SyncableSettingsContract;
.super Ljava/lang/Object;
.source "SyncableSettingsContract.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.google.glass.settings.syncable"

.field private static final BASE_URI:Landroid/net/Uri;

.field public static final SETTINGS_TABLE:Ljava/lang/String; = "syncable_settings"

.field public static final SETTINGS_TABLE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 18
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.glass.settings.syncable"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/SyncableSettingsContract;->BASE_URI:Landroid/net/Uri;

    .line 21
    sget-object v0, Lcom/google/glass/settings/SyncableSettingsContract;->BASE_URI:Landroid/net/Uri;

    .line 22
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "syncable_settings"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/SyncableSettingsContract;->SETTINGS_TABLE_URI:Landroid/net/Uri;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
