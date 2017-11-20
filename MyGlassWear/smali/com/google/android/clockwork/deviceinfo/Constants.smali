.class public Lcom/google/android/clockwork/deviceinfo/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final DATA_ITEM_NAME:Ljava/lang/String;

.field public static final FEATURE_TAG:Ljava/lang/String; = "device_info"

.field public static final FIELD_DISPLAY_CIRCULAR:Ljava/lang/String; = "display_circular"

.field public static final FIELD_DISPLAY_DENSITY:Ljava/lang/String; = "display_density"

.field public static final FIELD_DISPLAY_DENSITY_DPI:Ljava/lang/String; = "display_density_dpi"

.field public static final FIELD_DISPLAY_HEIGHT_PIXELS:Ljava/lang/String; = "display_height_pixels"

.field public static final FIELD_DISPLAY_SCALED_DENSITY:Ljava/lang/String; = "display_scaled_density"

.field public static final FIELD_DISPLAY_WIDTH_PIXELS:Ljava/lang/String; = "display_width_pixels"

.field public static final FIELD_DISPLAY_XDPI:Ljava/lang/String; = "display_xdpi"

.field public static final FIELD_DISPLAY_YDPI:Ljava/lang/String; = "display_ydpi"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    const-string v0, "device_info"

    const-string v1, "/device_info"

    invoke-static {v0, v1}, Lcom/google/android/clockwork/host/WearableHostUtil;->pathWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/deviceinfo/Constants;->DATA_ITEM_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
