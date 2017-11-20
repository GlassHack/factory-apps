.class final Lcom/google/android/gms/internal/rb$k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/people/GraphUpdate$LoadAddToCircleConsentResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/rb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "k"
.end annotation


# instance fields
.field private final FJ:Lcom/google/android/gms/common/api/Status;

.field private final aDF:Z

.field private final aDG:Ljava/lang/String;

.field private final aDH:Ljava/lang/String;

.field private final aDI:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/rb$k;->FJ:Lcom/google/android/gms/common/api/Status;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/rb$k;->aDF:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/rb$k;->aDG:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/rb$k;->aDH:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/rb$k;->aDI:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConsentButtonText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rb$k;->aDI:Ljava/lang/String;

    return-object v0
.end method

.method public getConsentHtml()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rb$k;->aDG:Ljava/lang/String;

    return-object v0
.end method

.method public getConsentTitleText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rb$k;->aDH:Ljava/lang/String;

    return-object v0
.end method

.method public getShowConsent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/rb$k;->aDF:Z

    return v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rb$k;->FJ:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
