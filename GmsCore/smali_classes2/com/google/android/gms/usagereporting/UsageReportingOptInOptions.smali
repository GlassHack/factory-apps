.class public Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/usagereporting/h;


# instance fields
.field final a:I

.field b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/google/android/gms/usagereporting/h;

    invoke-direct {v0}, Lcom/google/android/gms/usagereporting/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;->CREATOR:Lcom/google/android/gms/usagereporting/h;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;-><init>(II)V

    .line 48
    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;->a:I

    .line 41
    iput p2, p0, Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;->b:I

    .line 42
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;->b:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/google/android/gms/usagereporting/h;->a(Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;Landroid/os/Parcel;)V

    .line 65
    return-void
.end method
