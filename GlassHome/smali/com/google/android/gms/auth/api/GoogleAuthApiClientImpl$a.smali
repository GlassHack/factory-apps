.class final Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/api/GoogleAuthApi$GoogleAuthApiResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private mPendingIntent:Landroid/app/PendingIntent;

.field private pw:Ljava/lang/String;

.field private px:Lcom/google/android/gms/common/api/Status;

.field private py:Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl$a;->py:Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->xB:Lcom/google/android/gms/common/api/Status;

    iput-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl$a;->px:Lcom/google/android/gms/common/api/Status;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl$a;->px:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl$a;->pw:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl$a;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public getErrorDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl$a;->pw:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl$a;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getResponse()Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl$a;->py:Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl$a;->px:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public isUserRecoverable()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl$a;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
