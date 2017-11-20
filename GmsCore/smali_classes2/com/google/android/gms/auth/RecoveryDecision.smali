.class public Lcom/google/android/gms/auth/RecoveryDecision;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/z;


# instance fields
.field final a:I

.field public b:Landroid/app/PendingIntent;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/google/android/gms/auth/z;

    invoke-direct {v0}, Lcom/google/android/gms/auth/z;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/RecoveryDecision;->CREATOR:Lcom/google/android/gms/auth/z;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/RecoveryDecision;->a:I

    .line 85
    return-void
.end method

.method constructor <init>(ILandroid/app/PendingIntent;ZZZLandroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Lcom/google/android/gms/auth/RecoveryDecision;->a:I

    .line 96
    iput-object p2, p0, Lcom/google/android/gms/auth/RecoveryDecision;->b:Landroid/app/PendingIntent;

    .line 97
    iput-boolean p3, p0, Lcom/google/android/gms/auth/RecoveryDecision;->c:Z

    .line 98
    iput-boolean p4, p0, Lcom/google/android/gms/auth/RecoveryDecision;->d:Z

    .line 99
    iput-boolean p5, p0, Lcom/google/android/gms/auth/RecoveryDecision;->e:Z

    .line 100
    iput-object p6, p0, Lcom/google/android/gms/auth/RecoveryDecision;->f:Landroid/app/PendingIntent;

    .line 101
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 30
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/z;->a(Lcom/google/android/gms/auth/RecoveryDecision;Landroid/os/Parcel;I)V

    .line 31
    return-void
.end method
