.class public Lcom/google/android/gms/auth/RecoveryReadResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/aa;


# instance fields
.field final a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/util/List;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/google/android/gms/auth/aa;

    invoke-direct {v0}, Lcom/google/android/gms/auth/aa;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/RecoveryReadResponse;->CREATOR:Lcom/google/android/gms/auth/aa;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->a:I

    .line 107
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput p1, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->a:I

    .line 120
    iput-object p2, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->b:Ljava/lang/String;

    .line 121
    iput-object p3, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->c:Ljava/lang/String;

    .line 122
    iput-object p4, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->d:Ljava/lang/String;

    .line 123
    iput-object p5, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->e:Ljava/util/List;

    .line 124
    iput-object p6, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->f:Ljava/lang/String;

    .line 125
    iput-object p7, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->g:Ljava/lang/String;

    .line 126
    iput-object p8, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->h:Ljava/lang/String;

    .line 127
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/aa;->a(Lcom/google/android/gms/auth/RecoveryReadResponse;Landroid/os/Parcel;)V

    .line 34
    return-void
.end method
