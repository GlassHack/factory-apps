.class public final Lcom/google/android/gms/location/reporting/ReportingState$Setting;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/reporting/ReportingState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Setting"
.end annotation


# static fields
.field public static final AMBIGUOUS:I = -0x2

.field public static final OFF:I = -0x1

.field public static final ON:I = 0x1

.field public static final UNDEFINED:I = 0x0

.field public static final UNKNOWN_OFF:I = -0x3

.field public static final UNKNOWN_ON:I = 0x63


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isOff(I)Z
    .locals 1
    .param p0, "setting"    # I

    .prologue
    invoke-static {p0}, Lcom/google/android/gms/location/reporting/Reporting$Setting;->isOff(I)Z

    move-result v0

    return v0
.end method

.method public static isOn(I)Z
    .locals 1
    .param p0, "setting"    # I

    .prologue
    invoke-static {p0}, Lcom/google/android/gms/location/reporting/Reporting$Setting;->isOn(I)Z

    move-result v0

    return v0
.end method

.method public static sanitize(I)I
    .locals 1
    .param p0, "setting"    # I

    .prologue
    invoke-static {p0}, Lcom/google/android/gms/location/reporting/Reporting$Setting;->sanitize(I)I

    move-result v0

    return v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "setting"    # I

    .prologue
    invoke-static {p0}, Lcom/google/android/gms/location/reporting/Reporting$Setting;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
