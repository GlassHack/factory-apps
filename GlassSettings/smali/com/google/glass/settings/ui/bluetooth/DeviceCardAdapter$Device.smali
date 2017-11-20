.class public final enum Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;
.super Ljava/lang/Enum;
.source "DeviceCardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Device"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;

.field public static final enum ANDROID:Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;

.field public static final enum IPHONE:Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;


# instance fields
.field final resourceInstruction:I

.field final resourcePhoneIcon:I

.field final resourcePhoneName:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;

    const-string v1, "ANDROID"

    sget v3, Lcom/google/glass/settings/ui/R$drawable;->ic_mobile_phone_50:I

    sget v4, Lcom/google/glass/settings/ui/R$string;->android_phone:I

    sget v5, Lcom/google/glass/settings/ui/R$string;->tap_or_swipe:I

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;->ANDROID:Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;

    .line 22
    new-instance v3, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;

    const-string v4, "IPHONE"

    sget v6, Lcom/google/glass/settings/ui/R$drawable;->ic_mobile_phone_50:I

    sget v7, Lcom/google/glass/settings/ui/R$string;->ios_phone:I

    sget v8, Lcom/google/glass/settings/ui/R$string;->tap_using_one:I

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;->IPHONE:Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;

    sget-object v1, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;->ANDROID:Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;->IPHONE:Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;

    aput-object v1, v0, v9

    sput-object v0, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;->$VALUES:[Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p3, "resourcePhoneIcon"    # I
    .param p4, "resourcePhoneName"    # I
    .param p5, "resourceInstruction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;->resourcePhoneIcon:I

    .line 30
    iput p4, p0, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;->resourcePhoneName:I

    .line 31
    iput p5, p0, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;->resourceInstruction:I

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;->$VALUES:[Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;

    invoke-virtual {v0}, [Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;

    return-object v0
.end method
