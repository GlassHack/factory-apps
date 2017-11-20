.class public final Lcom/google/android/clockwork/settings/SettingsContract;
.super Ljava/lang/Object;
.source "SettingsContract.java"


# static fields
.field public static final COLUMN_KEY:Ljava/lang/String; = "key"

.field public static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field public static final DISPLAY_SHAPE_PATH:Ljava/lang/String; = "shape"

.field public static final DISPLAY_SHAPE_ROUND_WITH_CHIN:I = 0x1

.field public static final DISPLAY_SHAPE_SQUARE:I = 0x0

.field public static final DISPLAY_SHAPE_URI:Landroid/net/Uri;

.field public static final KEY_DISPLAY_SHAPE:Ljava/lang/String; = "display_shape"

.field public static final KEY_RETAIL_MODE:Ljava/lang/String; = "retail_mode"

.field public static final RETAIL_MODE_CONSUMER:I = 0x0

.field public static final RETAIL_MODE_PATH:Ljava/lang/String; = "retail"

.field public static final RETAIL_MODE_RETAIL:I = 0x1

.field public static final RETAIL_MODE_URI:Landroid/net/Uri;

.field public static final SETTINGS_AUTHORITY:Ljava/lang/String; = "com.google.android.wearable.settings"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.android.wearable.settings"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "retail"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/settings/SettingsContract;->RETAIL_MODE_URI:Landroid/net/Uri;

    .line 13
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.android.wearable.settings"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "shape"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/settings/SettingsContract;->DISPLAY_SHAPE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
