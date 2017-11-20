.class public Lcom/google/android/gms/auth/RecoveryReadResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/auth/g;


# instance fields
.field final b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/List;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/g;

    invoke-direct {v0}, Lcom/google/android/gms/auth/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/RecoveryReadResponse;->a:Lcom/google/android/gms/auth/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->b:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->b:I

    iput-object p2, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->f:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->g:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->h:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->i:Ljava/lang/String;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/g;->a(Lcom/google/android/gms/auth/RecoveryReadResponse;Landroid/os/Parcel;I)V

    return-void
.end method
