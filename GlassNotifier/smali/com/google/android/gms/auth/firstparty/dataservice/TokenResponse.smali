.class public Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/ag;


# instance fields
.field HC:Ljava/lang/String;

.field Hi:Ljava/lang/String;

.field Hk:Ljava/lang/String;

.field Hl:Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;

.field IA:Ljava/lang/String;

.field IB:Z

.field IC:Z

.field IE:Z

.field IF:Z

.field IG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;",
            ">;"
        }
    .end annotation
.end field

.field IH:Z

.field II:Z

.field Ii:Ljava/lang/String;

.field In:Ljava/lang/String;

.field Iz:Ljava/lang/String;

.field accountName:Ljava/lang/String;

.field firstName:Ljava/lang/String;

.field lastName:Ljava/lang/String;

.field title:I

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/ag;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ag;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/ag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->version:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->IG:Ljava/util/List;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "statusWireCode"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "signInUrl"    # Ljava/lang/String;
    .param p6, "detail"    # Ljava/lang/String;
    .param p7, "picasaUser"    # Ljava/lang/String;
    .param p8, "firstName"    # Ljava/lang/String;
    .param p9, "lastName"    # Ljava/lang/String;
    .param p10, "isGPlusServiceAllowed"    # Z
    .param p11, "isGPlusServiceEnabled"    # Z
    .param p12, "isEsMobileServiceEnabled"    # Z
    .param p13, "isBrowserSignInSuggested"    # Z
    .param p14, "captcha"    # Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;
    .param p16, "ropText"    # Ljava/lang/String;
    .param p17, "ropRevision"    # Ljava/lang/String;
    .param p18, "isTokenCached"    # Z
    .param p19, "hasTitle"    # Z
    .param p20, "title"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ",
            "Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZI)V"
        }
    .end annotation

    .prologue
    .local p15, "scopeData":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->accountName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->Hi:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->HC:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->Iz:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->Hk:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->IA:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->firstName:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->lastName:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->IB:Z

    iput-boolean p11, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->IC:Z

    iput-boolean p12, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->IE:Z

    iput-boolean p13, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->IF:Z

    iput-object p14, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->Hl:Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->IG:Ljava/util/List;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->In:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->Ii:Ljava/lang/String;

    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->IH:Z

    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->II:Z

    move/from16 v0, p20

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->title:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptchaChallenge()Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->Hl:Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;

    return-object v0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->Hk:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getPicasaUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->IA:Ljava/lang/String;

    return-object v0
.end method

.method public getRopRevision()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->Ii:Ljava/lang/String;

    return-object v0
.end method

.method public getRopText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->In:Ljava/lang/String;

    return-object v0
.end method

.method public getScopeData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->IG:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSignInUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->Iz:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/auth/firstparty/shared/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->Hi:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/auth/firstparty/shared/Status;->fromWireCode(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->title:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->HC:Ljava/lang/String;

    return-object v0
.end method

.method public hasTitle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->II:Z

    return v0
.end method

.method public isBrowserSignInSuggested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->IF:Z

    return v0
.end method

.method public isEsMobileServiceEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->IE:Z

    return v0
.end method

.method public isGPlusServiceAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->IB:Z

    return v0
.end method

.method public isGPlusServiceEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->IC:Z

    return v0
.end method

.method public isTokenCached()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->IH:Z

    return v0
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->accountName:Ljava/lang/String;

    return-object p0
.end method

.method public setBrowserSignInSuggested(Z)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 0
    .param p1, "isSuggested"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->IF:Z

    return-object p0
.end method

.method public setCaptchaChallenge(Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 0
    .param p1, "challenge"    # Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->Hl:Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;

    return-object p0
.end method

.method public setDetail(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 0
    .param p1, "detail"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->Hk:Ljava/lang/String;

    return-object p0
.end method

.method public setEsMobileServiceEnabled(Z)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->IE:Z

    return-object p0
.end method

.method public setFirstName(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 0
    .param p1, "firstName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->firstName:Ljava/lang/String;

    return-object p0
.end method

.method public setGPlusServiceAllowed(Z)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 0
    .param p1, "isAllowed"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->IB:Z

    return-object p0
.end method

.method public setGPlusServiceEnabled(Z)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->IC:Z

    return-object p0
.end method

.method public setHasTitle(Z)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 0
    .param p1, "hasTitle"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->II:Z

    return-object p0
.end method

.method public setIsTokenCached(Z)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 0
    .param p1, "isTokenCached"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->IH:Z

    return-object p0
.end method

.method public setLastName(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 0
    .param p1, "lastName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->lastName:Ljava/lang/String;

    return-object p0
.end method

.method public setPicasaUser(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 0
    .param p1, "picasaUser"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->IA:Ljava/lang/String;

    return-object p0
.end method

.method public setRopRevision(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 0
    .param p1, "ropRevision"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->Ii:Ljava/lang/String;

    return-object p0
.end method

.method public setRopText(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 0
    .param p1, "ropText"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->In:Ljava/lang/String;

    return-object p0
.end method

.method public setScopeData(Ljava/util/List;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;",
            ">;)",
            "Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;"
        }
    .end annotation

    .prologue
    .local p1, "scopeData":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;>;"
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->IG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->IG:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public setSignInUrl(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->Iz:Ljava/lang/String;

    return-object p0
.end method

.method public setStatus(Lcom/google/android/gms/auth/firstparty/shared/Status;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 1
    .param p1, "status"    # Lcom/google/android/gms/auth/firstparty/shared/Status;

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/common/internal/u;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/shared/Status;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/shared/Status;->getWire()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->Hi:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(I)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 0
    .param p1, "title"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->title:I

    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->HC:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/ag;->a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;Landroid/os/Parcel;I)V

    return-void
.end method
