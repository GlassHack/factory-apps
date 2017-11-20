.class public Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/b;


# instance fields
.field pM:Ljava/lang/String;

.field pN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field pO:Ljava/lang/String;

.field pP:Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/b;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/b;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "statusWireCode"    # Ljava/lang/String;
    .param p4, "detail"    # Ljava/lang/String;
    .param p5, "captcha"    # Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->pM:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->pN:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->pO:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->pP:Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/firstparty/shared/Status;)V
    .locals 1
    .param p1, "status"    # Lcom/google/android/gms/auth/firstparty/shared/Status;

    .prologue
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;-><init>(Lcom/google/android/gms/auth/firstparty/shared/Status;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/firstparty/shared/Status;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;Ljava/util/List;)V
    .locals 1
    .param p1, "status"    # Lcom/google/android/gms/auth/firstparty/shared/Status;
    .param p2, "detail"    # Ljava/lang/String;
    .param p3, "captchaChallenge"    # Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/firstparty/shared/Status;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->version:I

    invoke-static {p1}, Lcom/google/android/gms/common/internal/l;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/shared/Status;->getWire()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->pM:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->pO:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->pP:Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->pN:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/firstparty/shared/Status;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "status"    # Lcom/google/android/gms/auth/firstparty/shared/Status;
    .param p2, "detail"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/firstparty/shared/Status;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;-><init>(Lcom/google/android/gms/auth/firstparty/shared/Status;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/firstparty/shared/Status;Ljava/util/List;)V
    .locals 1
    .param p1, "status"    # Lcom/google/android/gms/auth/firstparty/shared/Status;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/firstparty/shared/Status;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;-><init>(Lcom/google/android/gms/auth/firstparty/shared/Status;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccountNameSuggestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->pN:Ljava/util/List;

    return-object v0
.end method

.method public getCaptchaChallenge()Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->pP:Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;

    return-object v0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->pO:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/auth/firstparty/shared/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;->pM:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/auth/firstparty/shared/Status;->fromWireCode(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/b;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;Landroid/os/Parcel;I)V

    return-void
.end method
