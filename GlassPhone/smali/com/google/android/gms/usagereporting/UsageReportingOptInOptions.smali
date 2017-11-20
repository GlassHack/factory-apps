.class public Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/usagereporting/a;

.field public static final OPTION_NO_CHANGE:I = 0x0

.field public static final OPTION_OPT_IN:I = 0x1

.field public static final OPTION_OPT_OUT:I = 0x2

.field public static final VERSION_CODE:I = 0x1


# instance fields
.field Vo:I

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/usagereporting/a;

    invoke-direct {v0}, Lcom/google/android/gms/usagereporting/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;->CREATOR:Lcom/google/android/gms/usagereporting/a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "optInUsageReporting"    # I

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;-><init>(II)V

    return-void
.end method

.method constructor <init>(II)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "optInUsageReporting"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;->Vo:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOptInUsageReporting()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;->Vo:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/usagereporting/a;->a(Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;Landroid/os/Parcel;I)V

    return-void
.end method
