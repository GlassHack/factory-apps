.class public Lcom/google/android/gms/auth/Country;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/l;


# instance fields
.field final a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/google/android/gms/auth/l;

    invoke-direct {v0}, Lcom/google/android/gms/auth/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/Country;->CREATOR:Lcom/google/android/gms/auth/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/Country;->a:I

    .line 50
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/google/android/gms/auth/Country;->a:I

    .line 58
    iput-object p2, p0, Lcom/google/android/gms/auth/Country;->b:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/google/android/gms/auth/Country;->c:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/l;->a(Lcom/google/android/gms/auth/Country;Landroid/os/Parcel;)V

    .line 32
    return-void
.end method
