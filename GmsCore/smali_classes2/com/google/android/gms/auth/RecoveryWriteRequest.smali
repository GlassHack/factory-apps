.class public Lcom/google/android/gms/auth/RecoveryWriteRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/ab;


# instance fields
.field final a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/google/android/gms/auth/ab;

    invoke-direct {v0}, Lcom/google/android/gms/auth/ab;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/RecoveryWriteRequest;->CREATOR:Lcom/google/android/gms/auth/ab;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/RecoveryWriteRequest;->a:I

    .line 81
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput p1, p0, Lcom/google/android/gms/auth/RecoveryWriteRequest;->a:I

    .line 92
    iput-object p2, p0, Lcom/google/android/gms/auth/RecoveryWriteRequest;->b:Ljava/lang/String;

    .line 93
    iput-object p3, p0, Lcom/google/android/gms/auth/RecoveryWriteRequest;->c:Ljava/lang/String;

    .line 94
    iput-object p4, p0, Lcom/google/android/gms/auth/RecoveryWriteRequest;->d:Ljava/lang/String;

    .line 95
    iput-object p5, p0, Lcom/google/android/gms/auth/RecoveryWriteRequest;->e:Ljava/lang/String;

    .line 96
    iput-boolean p6, p0, Lcom/google/android/gms/auth/RecoveryWriteRequest;->f:Z

    .line 97
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
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/ab;->a(Lcom/google/android/gms/auth/RecoveryWriteRequest;Landroid/os/Parcel;)V

    .line 32
    return-void
.end method
