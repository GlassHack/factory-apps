.class public Lcom/google/android/gms/auth/RecoveryDecision;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/auth/f;


# instance fields
.field final b:I

.field public c:Landroid/app/PendingIntent;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/f;

    invoke-direct {v0}, Lcom/google/android/gms/auth/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/RecoveryDecision;->a:Lcom/google/android/gms/auth/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/RecoveryDecision;->b:I

    return-void
.end method

.method constructor <init>(ILandroid/app/PendingIntent;ZZZLandroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/RecoveryDecision;->b:I

    iput-object p2, p0, Lcom/google/android/gms/auth/RecoveryDecision;->c:Landroid/app/PendingIntent;

    iput-boolean p3, p0, Lcom/google/android/gms/auth/RecoveryDecision;->d:Z

    iput-boolean p4, p0, Lcom/google/android/gms/auth/RecoveryDecision;->e:Z

    iput-boolean p5, p0, Lcom/google/android/gms/auth/RecoveryDecision;->f:Z

    iput-object p6, p0, Lcom/google/android/gms/auth/RecoveryDecision;->g:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/f;->a(Lcom/google/android/gms/auth/RecoveryDecision;Landroid/os/Parcel;I)V

    return-void
.end method
