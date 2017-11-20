.class public Lcom/google/android/clockwork/setup/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final BROADCAST_IMAGE_PACKAGE:Ljava/lang/String; = "product_image_package"

.field public static final BROADCAST_IMAGE_RESID:Ljava/lang/String; = "product_image_resid"

.field public static final DATA_ITEM_NAME:Ljava/lang/String;

.field public static final FEATURE_TAG:Ljava/lang/String; = "setup"

.field public static final FIELD_DEFAULT_WATCHFACE:Ljava/lang/String; = "default_watchface"

.field public static final FIELD_DISABLE_DOZE:Ljava/lang/String; = "default_disable_doze"

.field public static final FIELD_HAS_OEM_INFO:Ljava/lang/String; = "has_oem_info"

.field public static final FIELD_OEM_COMPANION_MIN_VERSION:Ljava/lang/String; = "oem_companion_min_version"

.field public static final FIELD_OEM_COMPANION_PKG:Ljava/lang/String; = "oem_companion_pkg"

.field public static final FIELD_PRODUCT_IMAGE:Ljava/lang/String; = "product_image"

.field public static final FIELD_PRODUCT_NAME:Ljava/lang/String; = "product_name"

.field public static final FIELD_SOURCE_MAC:Ljava/lang/String; = "source_mac"

.field public static final NO_MIN_VERSION:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    const-string v0, "setup"

    const-string v1, "/oem_setup_info"

    invoke-static {v0, v1}, Lcom/google/android/clockwork/host/WearableHostUtil;->pathWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/setup/Constants;->DATA_ITEM_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
