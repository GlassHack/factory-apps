.class public final Lcom/google/android/gms/auth/gsf/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final aj:Ljava/util/LinkedHashMap;

.field private static final ak:Ljava/util/Random;


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Landroid/os/Bundle;

.field public D:Landroid/app/PendingIntent;

.field public E:Ljava/util/HashMap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public F:Ljava/util/List;

.field public G:Z

.field public H:Landroid/content/Intent;

.field public I:Ljava/lang/String;

.field public J:Ljava/lang/String;

.field public K:Z

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:Z

.field public P:Ljava/lang/String;

.field public Q:Ljava/lang/String;

.field public R:Z

.field public S:Ljava/lang/String;

.field public T:Ljava/lang/String;

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:Z

.field public Y:Z

.field public Z:Z

.field public a:Ljava/lang/String;

.field public aa:Z

.field public ab:Ljava/util/ArrayList;

.field public ac:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field public ad:Z

.field public ae:Z

.field public af:Z

.field public ag:Z

.field public ah:Z

.field public ai:Z

.field public b:I

.field public c:Lcom/google/android/gms/auth/firstparty/shared/k;

.field public d:Ljava/lang/String;

.field public e:Ljava/util/ArrayList;

.field public f:Ljava/lang/String;

.field public g:Ljava/util/ArrayList;

.field public h:Landroid/accounts/AccountAuthenticatorResponse;

.field public i:Z

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Z

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Z

.field public t:I

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/gsf/e;->aj:Ljava/util/LinkedHashMap;

    .line 40
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/gsf/e;->ak:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->i:Z

    .line 162
    iput-object v2, p0, Lcom/google/android/gms/auth/gsf/e;->n:Ljava/lang/String;

    .line 163
    iput-object v2, p0, Lcom/google/android/gms/auth/gsf/e;->o:Ljava/lang/String;

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/gsf/e;->p:Z

    .line 173
    iput-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->s:Z

    .line 176
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/auth/gsf/e;->t:I

    .line 181
    iput-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->u:Z

    .line 195
    iput-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->x:Z

    .line 203
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/gsf/e;->C:Landroid/os/Bundle;

    .line 214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/gsf/e;->E:Ljava/util/HashMap;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/gsf/e;->F:Ljava/util/List;

    .line 240
    iput-object v2, p0, Lcom/google/android/gms/auth/gsf/e;->P:Ljava/lang/String;

    .line 241
    iput-object v2, p0, Lcom/google/android/gms/auth/gsf/e;->Q:Ljava/lang/String;

    .line 291
    iput-object p1, p0, Lcom/google/android/gms/auth/gsf/e;->j:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public static a()Lcom/google/android/gms/auth/gsf/e;
    .locals 4

    .prologue
    .line 52
    new-instance v0, Lcom/google/android/gms/auth/gsf/e;

    sget-object v1, Lcom/google/android/gms/auth/gsf/e;->ak:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/gsf/e;-><init>(Ljava/lang/String;)V

    .line 53
    return-object v0
.end method

.method public static a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/gsf/e;
    .locals 3

    .prologue
    .line 90
    if-nez p0, :cond_2

    const/4 v0, 0x0

    move-object v1, v0

    .line 91
    :goto_0
    if-eqz v1, :cond_3

    .line 93
    sget-object v0, Lcom/google/android/gms/auth/gsf/e;->aj:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/gsf/e;

    if-nez v0, :cond_1

    const-string v0, "GLSUser"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GLSUser"

    const-string v2, "Session was previously removed, creating new one"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/gsf/e;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/gsf/e;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/auth/gsf/e;->aj:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_1
    :goto_1
    return-object v0

    .line 90
    :cond_2
    const-string v0, "session"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 95
    :cond_3
    const-string v0, "GLSUser"

    const-string v1, "GLS Activity without session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v0, Lcom/google/android/gms/auth/gsf/e;->aj:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_4

    sget-object v0, Lcom/google/android/gms/auth/gsf/e;->aj:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/auth/gsf/e;->aj:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {}, Lcom/google/android/gms/auth/gsf/e;->a()Lcom/google/android/gms/auth/gsf/e;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/auth/gsf/e;->aj:Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lcom/google/android/gms/auth/gsf/e;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/gms/auth/gsf/e;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/google/android/gms/auth/gsf/e;->aj:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/gsf/e;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/auth/gsf/e;
    .locals 6

    .prologue
    .line 382
    new-instance v1, Lcom/google/android/gms/auth/gsf/e;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/gsf/e;-><init>(Ljava/lang/String;)V

    .line 383
    sget-object v0, Lcom/google/android/gms/auth/gsf/e;->aj:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v0, "username"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/auth/gsf/e;->a:Ljava/lang/String;

    .line 387
    const-string v0, "callingUID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/google/android/gms/auth/gsf/e;->b:I

    .line 388
    const-string v0, "error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, v1, Lcom/google/android/gms/auth/gsf/e;->c:Lcom/google/android/gms/auth/firstparty/shared/k;

    .line 390
    const-string v0, "detail"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/auth/gsf/e;->d:Ljava/lang/String;

    .line 391
    const-string v0, "Url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/auth/gsf/e;->J:Ljava/lang/String;

    .line 392
    const-string v0, "permission"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/auth/gsf/e;->g:Ljava/util/ArrayList;

    .line 393
    const-string v0, "accountAuthenticatorResponse"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    iput-object v0, v1, Lcom/google/android/gms/auth/gsf/e;->h:Landroid/accounts/AccountAuthenticatorResponse;

    .line 395
    const-string v0, "accountAuthenticatorResponseCalled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/auth/gsf/e;->i:Z

    .line 397
    const-string v0, "key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/auth/gsf/e;->j:Ljava/lang/String;

    .line 398
    const-string v0, "isNewAccount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/auth/gsf/e;->k:Z

    .line 399
    const-string v0, "setupWizard"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/auth/gsf/e;->l:Z

    .line 400
    const-string v0, "termsOfServiceShown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/auth/gsf/e;->x:Z

    .line 401
    const-string v0, "nameActivityCompleted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/auth/gsf/e;->v:Z

    .line 402
    const-string v0, "photoActivityCompleted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/auth/gsf/e;->w:Z

    .line 403
    const-string v0, "secondaryEmail"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/auth/gsf/e;->y:Ljava/lang/String;

    .line 404
    const-string v0, "securityQuestion"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/auth/gsf/e;->z:Ljava/lang/String;

    .line 405
    const-string v0, "securityAnswer"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/auth/gsf/e;->A:Ljava/lang/String;

    .line 406
    const-string v0, "accessToken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/auth/gsf/e;->B:Ljava/lang/String;

    .line 407
    const-string v0, "accountManagerOptions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/auth/gsf/e;->C:Landroid/os/Bundle;

    .line 408
    const-string v0, "userSelectedGooglePlus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/auth/gsf/e;->u:Z

    .line 409
    const-string v0, "creatingAccount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/auth/gsf/e;->m:Z

    .line 410
    const-string v0, "allowGooglePlus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/auth/gsf/e;->p:Z

    .line 411
    const-string v0, "hasGooglePlus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/auth/gsf/e;->s:Z

    .line 412
    const-string v0, "profileResult"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/google/android/gms/auth/gsf/e;->t:I

    .line 413
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/auth/gsf/e;->J:Ljava/lang/String;

    .line 415
    const-string v0, "userData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 416
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-ge v0, v3, :cond_1

    .line 417
    iget-object v3, v1, Lcom/google/android/gms/auth/gsf/e;->E:Ljava/util/HashMap;

    mul-int/lit8 v4, v0, 0x2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 389
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/auth/a/h;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v0

    goto/16 :goto_0

    .line 422
    :cond_1
    const-string v0, "showOffer"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/auth/gsf/e;->G:Z

    .line 423
    const-string v0, "offerIntent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, v1, Lcom/google/android/gms/auth/gsf/e;->H:Landroid/content/Intent;

    .line 424
    const-string v0, "offerMessageHtml"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/auth/gsf/e;->I:Ljava/lang/String;

    .line 426
    const-string v0, "agreedToPlayTos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/auth/gsf/e;->K:Z

    .line 427
    const-string v0, "agreedToPlayEmail"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/auth/gsf/e;->L:Z

    .line 429
    const-string v0, "shownName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/auth/gsf/e;->O:Z

    .line 430
    const-string v0, "provisionedEmail"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/auth/gsf/e;->P:Ljava/lang/String;

    .line 431
    const-string v0, "provisionedName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/auth/gsf/e;->Q:Ljava/lang/String;

    .line 433
    const-string v0, "agreedToChromeTosAndPrivacy"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/auth/gsf/e;->R:Z

    .line 434
    const-string v0, "phoneNumber"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/auth/gsf/e;->S:Ljava/lang/String;

    .line 435
    const-string v0, "phoneCountryCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/auth/gsf/e;->T:Ljava/lang/String;

    .line 437
    const-string v0, "performBackup"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/auth/gsf/e;->U:Z

    .line 438
    const-string v0, "performRestore"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/auth/gsf/e;->V:Z

    .line 440
    const-string v0, "suppressCreditCardRequestActivity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/auth/gsf/e;->W:Z

    .line 442
    const-string v0, "suppressGoogleServicesActivity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/auth/gsf/e;->X:Z

    .line 444
    const-string v0, "suppressNameCheck"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/auth/gsf/e;->Y:Z

    .line 445
    const-string v0, "suppressLoginTos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/auth/gsf/e;->Z:Z

    .line 447
    const-string v0, "isEduSignin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/auth/gsf/e;->aa:Z

    .line 448
    const-string v0, "allowed_domains"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/auth/gsf/e;->ab:Ljava/util/ArrayList;

    .line 449
    const-string v0, "callingAppDescription"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iput-object v0, v1, Lcom/google/android/gms/auth/gsf/e;->ac:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .line 450
    const-string v0, "isConsented"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/auth/gsf/e;->ad:Z

    .line 452
    const-string v0, "ropRevision"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/auth/gsf/e;->q:Ljava/lang/String;

    .line 453
    const-string v0, "ropText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/auth/gsf/e;->r:Ljava/lang/String;

    .line 455
    const-string v0, "agreedToWebHistory"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/auth/gsf/e;->M:Z

    .line 456
    const-string v0, "agreedToPersonalizedContent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/auth/gsf/e;->N:Z

    .line 457
    const-string v0, "accountNameSuggestions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/auth/gsf/e;->e:Ljava/util/ArrayList;

    .line 458
    const-string v0, "accountNameCheckDetail"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/auth/gsf/e;->f:Ljava/lang/String;

    .line 459
    const-string v0, "isBrowserFlowRequired"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/auth/gsf/e;->ae:Z

    .line 460
    const-string v0, "carrierSetupLaunched"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/auth/gsf/e;->af:Z

    .line 461
    const-string v0, "restoreWifi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/auth/gsf/e;->ah:Z

    .line 462
    const-string v0, "wifiScreenShown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/auth/gsf/e;->ag:Z

    .line 463
    const-string v0, "useImmersiveMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/auth/gsf/e;->ai:Z

    .line 464
    return-object v1
.end method

.method public static declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 102
    const-class v1, Lcom/google/android/gms/auth/gsf/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/gsf/e;->aj:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit v1

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 295
    const-string v0, "session"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/e;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 299
    const-string v0, "username"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v0, "callingUID"

    iget v1, p0, Lcom/google/android/gms/auth/gsf/e;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 301
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/e;->c:Lcom/google/android/gms/auth/firstparty/shared/k;

    if-eqz v0, :cond_0

    .line 302
    const-string v0, "error"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/e;->c:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/shared/k;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_0
    const-string v0, "detail"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/e;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v0, "Url"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/e;->J:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v0, "permission"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/e;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 307
    const-string v0, "accountAuthenticatorResponse"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/e;->h:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 309
    const-string v0, "accountAuthenticatorResponseCalled"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->i:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 311
    const-string v0, "key"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/e;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v0, "isNewAccount"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->k:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 313
    const-string v0, "setupWizard"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->l:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 314
    const-string v0, "termsOfServiceShown"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->x:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 315
    const-string v0, "nameActivityCompleted"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->v:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 316
    const-string v0, "photoActivityCompleted"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->w:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 317
    const-string v0, "secondaryEmail"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/e;->y:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v0, "securityQuestion"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/e;->z:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v0, "securityAnwser"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/e;->A:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v0, "accessToken"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/e;->B:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v0, "accountManagerOptions"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/e;->C:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 322
    const-string v0, "userSelectedGooglePlus"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->u:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 323
    const-string v0, "creatingAccount"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->m:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 324
    const-string v0, "allowGooglePlus"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->p:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 325
    const-string v0, "hasGooglePlus"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->s:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 326
    const-string v0, "profileResult"

    iget v1, p0, Lcom/google/android/gms/auth/gsf/e;->t:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 327
    const-string v0, "url"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/e;->J:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 330
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/e;->E:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 331
    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/e;->E:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 332
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 333
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 334
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 337
    :cond_2
    const-string v0, "userData"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 339
    const-string v0, "showOffer"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->G:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 340
    const-string v0, "offerIntent"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/e;->H:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 341
    const-string v0, "offerMessageHtml"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/e;->I:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v0, "agreedToPlayTos"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->K:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 344
    const-string v0, "agreedToPlayEmail"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->L:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 346
    const-string v0, "shownName"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->O:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 347
    const-string v0, "provisionedEmail"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/e;->P:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v0, "provisionedName"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/e;->Q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v0, "agreedToChromeTosAndPrivacy"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->R:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 351
    const-string v0, "phoneNumber"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/e;->S:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v0, "phoneCountryCode"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/e;->T:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v0, "performBackup"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->U:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 355
    const-string v0, "performRestore"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->V:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 357
    const-string v0, "suppressCreditCardRequestActivity"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->W:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 358
    const-string v0, "suppressGoogleServicesActivity"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->X:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 359
    const-string v0, "suppressNameCheck"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->Y:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 360
    const-string v0, "suppressLoginTos"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->Z:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 362
    const-string v0, "isEduSignin"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->aa:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 363
    const-string v0, "allowed_domains"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/e;->ab:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 364
    const-string v0, "callingAppDescription"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/e;->ac:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 365
    const-string v0, "isConsented"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->ad:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 366
    const-string v0, "ropRevision"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/e;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v0, "ropText"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/e;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v0, "agreedToWebHistory"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->M:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 370
    const-string v0, "agreedToPersonalizedContent"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->N:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 371
    const-string v0, "accountNameSuggestions"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/e;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 372
    const-string v0, "accountNameCheckDetail"

    iget-object v1, p0, Lcom/google/android/gms/auth/gsf/e;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v0, "isBrowserFlowRequired"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->ae:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 374
    const-string v0, "carrierSetupLaunched"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->af:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 375
    const-string v0, "restoreWifi"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->ah:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 376
    const-string v0, "wifiScreenShown"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->ag:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 378
    const-string v0, "useImmersiveMode"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/gsf/e;->ai:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 379
    return-void
.end method
