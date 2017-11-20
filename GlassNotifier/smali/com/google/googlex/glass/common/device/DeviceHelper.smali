.class public Lcom/google/googlex/glass/common/device/DeviceHelper;
.super Ljava/lang/Object;
.source "DeviceHelper.java"


# static fields
.field private static final V2_MANUFACTURER_CODE:Ljava/lang/String; = "WP1"

.field private static final V2_MANUFACTURER_CODE_START_LOC:I = 0x1

.field private static final V2_SERIAL_LENGTH:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isV2Serial(Ljava/lang/String;)Z
    .locals 3
    .param p0, "serial"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 26
    if-nez p0, :cond_1

    .line 34
    :cond_0
    :goto_0
    return v0

    .line 30
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 34
    const/4 v0, 0x1

    const-string v1, "WP1"

    .line 36
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 34
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WP1"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
