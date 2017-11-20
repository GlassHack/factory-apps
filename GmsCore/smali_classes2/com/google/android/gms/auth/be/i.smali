.class Lcom/google/android/gms/auth/be/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic j:Z

.field private static final k:Ljava/lang/String;


# instance fields
.field public final a:Z

.field public b:Ljava/lang/String;

.field public c:Landroid/accounts/Account;

.field public d:Z

.field protected final e:Lcom/google/android/gms/auth/a/c;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field protected final i:Lcom/google/android/gms/auth/be/h;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 97
    const-class v0, Lcom/google/android/gms/auth/be/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/auth/be/i;->j:Z

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/auth/be/i;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    return-void

    .line 97
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 233
    new-instance v0, Lcom/google/android/gms/auth/a/c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/auth/a/c;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/auth/be/i;-><init>(Lcom/google/android/gms/auth/a/c;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/a/c;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/auth/be/i;-><init>(Lcom/google/android/gms/auth/a/c;Ljava/lang/String;B)V

    .line 238
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/auth/a/c;Ljava/lang/String;B)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    const-string v0, "GLSUser"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/be/i;->a:Z

    .line 252
    iput-object p1, p0, Lcom/google/android/gms/auth/be/i;->e:Lcom/google/android/gms/auth/a/c;

    .line 254
    invoke-static {}, Lcom/google/android/gms/auth/be/h;->a()Lcom/google/android/gms/auth/be/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    .line 255
    iput-object p2, p0, Lcom/google/android/gms/auth/be/i;->b:Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->e:Lcom/google/android/gms/auth/a/c;

    iget-object v0, v0, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/auth/be/i;->e:Lcom/google/android/gms/auth/a/c;

    iget-object v2, v2, Lcom/google/android/gms/auth/a/c;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/util/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/be/i;->d:Z

    .line 263
    iget-object v0, p1, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    .line 264
    new-instance v1, Lcom/google/android/gms/common/b/a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/b/a;-><init>(Landroid/content/Context;)V

    .line 265
    iget-boolean v0, p0, Lcom/google/android/gms/auth/be/i;->a:Z

    if-eqz v0, :cond_0

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Using [AuthUri: %s, SetupUri: %s, CreateProfileUri: %s]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    const-string v1, "GLSUser"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/gms/auth/b/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v4}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/google/android/gms/auth/b/a;->b:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v4}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    sget-object v3, Lcom/google/android/gms/auth/b/a;->d:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v3}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->b:Ljava/lang/String;

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/auth/be/i;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->e:Lcom/google/android/gms/auth/a/c;

    iget-object v1, v1, Lcom/google/android/gms/auth/a/c;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/a/d;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/auth/a/d;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/auth/be/i;->h:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/auth/a/d;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/i;->g:Ljava/lang/String;

    .line 274
    :cond_2
    return-void
.end method

.method private a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;Ljava/util/Map;Lcom/google/android/gms/auth/firstparty/shared/k;Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 5

    .prologue
    .line 1610
    invoke-static {}, Lcom/google/android/gms/auth/be/h;->a()Lcom/google/android/gms/auth/be/h;

    .line 1611
    invoke-virtual {p1, p3}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    .line 1612
    if-eqz p2, :cond_1

    .line 1613
    sget-object v0, Lcom/google/android/gms/auth/be/l;->b:[I

    invoke-virtual {p3}, Lcom/google/android/gms/auth/firstparty/shared/k;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1657
    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->M:Lcom/google/android/gms/auth/firstparty/shared/k;

    if-ne p3, v0, :cond_5

    .line 1665
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->e:Lcom/google/android/gms/auth/a/c;

    iget-object v0, v0, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1666
    const v1, 0x7f100094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1670
    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->d(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/auth/be/w;->C:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->c(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    .line 1673
    :cond_1
    return-object p1

    .line 1615
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/auth/be/w;->A:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/auth/be/i;->e(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ak;

    move-result-object v0

    .line 1618
    if-nez v0, :cond_2

    .line 1619
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1630
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1631
    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a(Ljava/util/List;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    goto :goto_0

    .line 1625
    :cond_2
    iget v1, v0, Lcom/google/android/gms/auth/login/ak;->c:I

    invoke-virtual {p1, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a(I)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    .line 1626
    iget-boolean v1, v0, Lcom/google/android/gms/auth/login/ak;->b:Z

    invoke-virtual {p1, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b(Z)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    .line 1627
    invoke-static {v0}, Lcom/google/android/gms/auth/be/i;->a(Lcom/google/android/gms/auth/login/ak;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_2

    .line 1633
    :cond_3
    const-string v0, "GLSUser"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No consent details provided for requests to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    const-string v0, "oauth2"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1639
    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->H:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    goto :goto_0

    .line 1644
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/auth/be/w;->r:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v0

    .line 1645
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1646
    if-eqz v0, :cond_0

    .line 1647
    iget-boolean v1, p0, Lcom/google/android/gms/auth/be/i;->a:Z

    if-eqz v1, :cond_4

    .line 1648
    const-string v1, "%s fillErrorResponse: BAD_AUTH response info: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1650
    const-string v2, "GLSUser"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    :cond_4
    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->c:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1653
    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a(Z)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    .line 1654
    if-eqz v0, :cond_0

    .line 1655
    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->c:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    goto/16 :goto_0

    .line 1668
    :cond_5
    sget-object v0, Lcom/google/android/gms/auth/be/w;->f:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_1

    .line 1613
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;
    .locals 4

    .prologue
    .line 2277
    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2278
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/auth/be/i;->a:Z

    if-eqz v0, :cond_0

    .line 2279
    const-string v0, "GLSUser"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "captcha url is ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/auth/a/b;->a(I)V

    .line 2283
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 2286
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0, v1, p3}, Lcom/google/android/gms/auth/be/h;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 2288
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2289
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2310
    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->m:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;-><init>(Lcom/google/android/gms/auth/firstparty/shared/k;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2312
    invoke-static {}, Lcom/google/android/gms/auth/a/b;->a()V

    :goto_2
    return-object v0

    .line 2277
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://www.google.com/accounts/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 2291
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v0, v0, Lcom/google/android/gms/auth/be/h;->b:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 2292
    iget-boolean v1, p0, Lcom/google/android/gms/auth/be/i;->a:Z

    if-eqz v1, :cond_3

    .line 2293
    const-string v1, "GLSUser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bitmap response is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    :cond_3
    const-string v1, "X-Google-Captcha-Error"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2298
    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->m:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;-><init>(Lcom/google/android/gms/auth/firstparty/shared/k;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2312
    invoke-static {}, Lcom/google/android/gms/auth/a/b;->a()V

    goto :goto_2

    .line 2300
    :cond_4
    :try_start_3
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    .line 2304
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2308
    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-direct {v0, v2, p1, v1}, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;-><init>(Lcom/google/android/gms/auth/firstparty/shared/k;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2312
    invoke-static {}, Lcom/google/android/gms/auth/a/b;->a()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/auth/a/b;->a()V

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 292
    sget-boolean v0, Lcom/google/android/gms/auth/be/i;->j:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->e:Lcom/google/android/gms/auth/a/c;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/auth/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    if-nez v0, :cond_1

    .line 295
    const/4 v0, 0x0

    .line 303
    :goto_0
    return-object v0

    .line 297
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/google/android/gms/auth/login/ak;)Ljava/util/ArrayList;
    .locals 3

    .prologue
    .line 1681
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1682
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ak;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/login/an;

    .line 1683
    invoke-static {v0}, Lcom/google/android/gms/auth/a/g;->a(Lcom/google/android/gms/auth/login/an;)Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1685
    :cond_0
    return-object v1
.end method

.method private a(Landroid/accounts/Account;ZLjava/lang/String;)V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 770
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v1

    .line 771
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 772
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 773
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 774
    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 775
    iget-object v4, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    iget-object v8, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    iget-object v4, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v7, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 782
    :cond_1
    new-instance v0, Lcom/google/android/gms/auth/be/j;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/auth/be/j;-><init>(Lcom/google/android/gms/auth/be/i;Landroid/accounts/Account;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;)V

    .line 816
    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->e:Lcom/google/android/gms/auth/a/c;

    iget-object v1, v1, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/auth/be/q;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/q;

    move-result-object v1

    .line 818
    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/q;->a()Ljava/lang/String;

    move-result-object v2

    .line 821
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v3, v3, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    iget-object v4, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v0, v6}, Landroid/accounts/AccountManager;->renameAccount(Landroid/accounts/Account;Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 827
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v3, 0x4

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/gms/auth/be/q;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 831
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/gms/auth/be/q;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 836
    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/be/q;->a(Ljava/lang/String;)V

    .line 837
    return-void

    .line 836
    :catchall_0
    move-exception v0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/be/q;->a(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2527
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2528
    if-eqz v0, :cond_0

    .line 2529
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2531
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/be/i;Landroid/accounts/Account;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/be/i;->b(Landroid/accounts/Account;)V

    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 368
    const-string v0, "weblogin:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    if-eqz p2, :cond_0

    .line 374
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/auth/be/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    if-nez v0, :cond_2

    .line 376
    const-string v0, "GLSUser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not caching since unable to generate a cache key for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 380
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v1, v1, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    invoke-virtual {v1, v2, v0, p4}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    if-eqz p5, :cond_0

    .line 382
    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v1, v1, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "EXP:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, p5}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2114
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/auth/be/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2115
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v2, v0, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    .line 2116
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    invoke-virtual {v2, v0, v1, p2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    if-nez p2, :cond_1

    .line 2125
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".pacl.visible_actions"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v5}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2129
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".pacl.data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v5}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2133
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".all_circles_visible"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v5}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2137
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".visible_graph"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v5}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2141
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".all_contacts_visible"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v5}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2145
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".has_show_circles"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v5}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2149
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".show_circles"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v5}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2153
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".show_contacts"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1, v5}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2218
    :cond_0
    :goto_0
    return-void

    .line 2164
    :cond_1
    if-eqz p4, :cond_3

    .line 2165
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".pacl.visible_actions"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2169
    invoke-virtual {p4}, Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;->b()Ljava/lang/String;

    move-result-object v0

    .line 2170
    if-nez v0, :cond_2

    .line 2171
    const-string v0, ""

    .line 2173
    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".pacl.data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    :cond_3
    if-eqz p5, :cond_0

    .line 2179
    invoke-virtual {p5}, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2180
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".all_circles_visible"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v2, v0, v3, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2185
    :cond_4
    invoke-virtual {p5}, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->b()Ljava/lang/String;

    move-result-object v0

    .line 2186
    if-eqz v0, :cond_5

    .line 2187
    iget-object v3, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".visible_graph"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2192
    :cond_5
    invoke-virtual {p5}, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2193
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".all_contacts_visible"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v2, v0, v3, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2198
    :cond_6
    invoke-virtual {p5}, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2199
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".has_show_circles"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v2, v0, v3, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    :cond_7
    invoke-virtual {p5}, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2205
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".show_circles"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v2, v0, v3, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    :cond_8
    invoke-virtual {p5}, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2211
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".show_contacts"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "1"

    invoke-virtual {v2, v0, v1, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 1200
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1201
    const-string v0, " Request: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1202
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 1203
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1204
    sget-object v4, Lcom/google/android/gms/auth/be/v;->b:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {v4}, Lcom/google/android/gms/auth/be/v;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/google/android/gms/auth/be/v;->d:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {v4}, Lcom/google/android/gms/auth/be/v;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/google/android/gms/auth/be/v;->R:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {v4}, Lcom/google/android/gms/auth/be/v;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1207
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1210
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " RESULT: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1211
    if-eqz p2, :cond_2

    .line 1212
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1213
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1216
    :cond_2
    if-eqz p3, :cond_3

    .line 1217
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " } Message: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1219
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/be/i;->a(Ljava/lang/String;)V

    .line 1220
    return-void
.end method

.method private static a(Landroid/accounts/Account;)Z
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 688
    const-string v1, "/data/user/0/com.google.android.backuptransport/shared_prefs/BackupTransport.backupAccount.xml"

    .line 690
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 695
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 696
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v5, 0x4000

    invoke-direct {v2, v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 699
    const/4 v1, 0x0

    invoke-interface {v6, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 700
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    move-object v5, v0

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    .line 702
    :goto_0
    const/4 v7, 0x2

    if-ne v0, v7, :cond_4

    .line 703
    const/4 v0, 0x0

    const-string v7, "name"

    invoke-interface {v6, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 704
    const-string v0, ""

    .line 705
    const-string v8, "accountName"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "accountType"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 707
    :cond_0
    :goto_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_1

    .line 708
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 711
    :cond_1
    const-string v8, "accountName"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 717
    :goto_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    .line 718
    if-ne v5, v3, :cond_5

    .line 724
    :goto_3
    invoke-static {v2}, Lcom/google/android/gms/common/util/n;->a(Ljava/io/Closeable;)V

    .line 726
    iget-object v2, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    :goto_4
    return v0

    .line 713
    :cond_2
    :try_start_2
    const-string v8, "accountType"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v7

    if-eqz v7, :cond_4

    move-object v1, v5

    .line 714
    goto :goto_2

    .line 720
    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 721
    :goto_5
    :try_start_3
    const-string v1, "GLSUser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " Failed reading backup prefs: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 722
    invoke-static {v2}, Lcom/google/android/gms/common/util/n;->a(Ljava/io/Closeable;)V

    move v0, v4

    goto :goto_4

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_6
    invoke-static {v2}, Lcom/google/android/gms/common/util/n;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_3
    move v0, v4

    .line 726
    goto :goto_4

    .line 722
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 720
    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_5

    :cond_4
    move-object v0, v1

    move-object v1, v5

    goto :goto_2

    :cond_5
    move v10, v5

    move-object v5, v1

    move-object v1, v0

    move v0, v10

    goto/16 :goto_0

    :cond_6
    move-object v1, v0

    move-object v2, v0

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5

    .prologue
    .line 2509
    const-string v0, "access_secret"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2510
    const-string v1, "parent_aid"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2511
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 2512
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 2513
    :cond_0
    const-string v0, "GLSUser"

    const-string v1, "importAccountForCloning: Secret or parent aid found null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    const/4 v0, 0x0

    .line 2523
    :goto_0
    return v0

    .line 2516
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2517
    const-string v3, "parent_aid"

    invoke-static {p2, v1, v3}, Lcom/google/android/gms/auth/be/i;->a(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2518
    const-string v3, "oauthAccessToken"

    invoke-static {p2, v1, v3}, Lcom/google/android/gms/auth/be/i;->a(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2519
    const-string v3, "sha1hash"

    invoke-static {p2, v1, v3}, Lcom/google/android/gms/auth/be/i;->a(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2520
    sget-object v3, Lcom/google/android/gms/auth/be/w;->i:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v1, v3}, Lcom/google/android/gms/auth/be/i;->a(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2521
    const-string v3, "flags"

    invoke-static {p2, v1, v3}, Lcom/google/android/gms/auth/be/i;->a(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2522
    new-instance v3, Landroid/accounts/Account;

    const-string v4, "com.google"

    invoke-direct {v3, p1, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2523
    invoke-virtual {v2, v3, v0, v1}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2047
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "perm."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/auth/be/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/accounts/Account;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 733
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.backup.SetBackupAccount"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 737
    const-string v1, "backupAccount"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 738
    const-string v1, "backupUserHandle"

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 739
    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v1, v1, Lcom/google/android/gms/auth/be/h;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 741
    :cond_0
    return-void
.end method

.method private b(Landroid/accounts/Account;ZLjava/lang/String;)V
    .locals 9

    .prologue
    .line 843
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    const-string v0, "GLSUser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed to clone account missing master token or encrypted password"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :goto_0
    return-void

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->g:Ljava/lang/String;

    .line 853
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v1, v1, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    .line 855
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 856
    const-string v3, "parent_aid"

    invoke-direct {p0}, Lcom/google/android/gms/auth/be/i;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const-string v3, "oauthAccessToken"

    iget-object v4, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    const-string v5, "oauthAccessToken"

    invoke-virtual {v1, v4, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const-string v3, "sha1hash"

    iget-object v4, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    const-string v5, "sha1hash"

    invoke-virtual {v1, v4, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    sget-object v3, Lcom/google/android/gms/auth/be/w;->i:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    sget-object v5, Lcom/google/android/gms/auth/be/w;->i:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v5}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const-string v3, "flags"

    iget-object v4, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    const-string v5, "flags"

    invoke-virtual {v1, v4, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    const-string v3, "GLSUser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " creating new account"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget-object v3, p0, Lcom/google/android/gms/auth/be/i;->e:Lcom/google/android/gms/auth/a/c;

    iget-object v3, v3, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/auth/be/q;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/q;

    move-result-object v3

    .line 868
    invoke-virtual {v3}, Lcom/google/android/gms/auth/be/q;->a()Ljava/lang/String;

    move-result-object v4

    .line 871
    :try_start_0
    invoke-virtual {v1, p1, v0, v2}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 873
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v2

    .line 874
    array-length v5, v2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v5, :cond_3

    aget-object v6, v2, v0

    .line 875
    iget-object v7, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 880
    iget-object v7, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    iget-object v8, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v7

    .line 882
    iget-object v8, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {p1, v8, v7}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 886
    iget-object v7, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    iget-object v8, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v7

    .line 888
    iget-object v6, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {p1, v6, v7}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 874
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 851
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->h:Ljava/lang/String;

    goto/16 :goto_1

    .line 893
    :cond_3
    :try_start_1
    const-string v0, "GLSUser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " removing old account"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    new-instance v2, Lcom/google/android/gms/auth/be/k;

    invoke-direct {v2, p0, p3}, Lcom/google/android/gms/auth/be/k;-><init>(Lcom/google/android/gms/auth/be/i;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 910
    if-eqz p2, :cond_4

    .line 912
    :try_start_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/be/i;->b(Landroid/accounts/Account;)V

    .line 913
    const-string v0, "GLSUser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " set new account as backup account"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 921
    :cond_4
    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v2, v5}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 928
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v1, 0x4

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v0, v1, v2}, Lcom/google/android/gms/auth/be/q;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 932
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v0, v1, v2}, Lcom/google/android/gms/auth/be/q;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 941
    :goto_4
    invoke-virtual {v3, v4}, Lcom/google/android/gms/auth/be/q;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 915
    :catch_0
    move-exception v0

    .line 916
    :try_start_4
    const-string v5, "GLSUser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed to set backup account: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 941
    :catchall_0
    move-exception v0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/auth/be/q;->a(Ljava/lang/String;)V

    throw v0

    .line 938
    :cond_5
    :try_start_5
    const-string v0, "GLSUser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error adding new account"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4
.end method

.method private c()V
    .locals 4

    .prologue
    .line 528
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v0, v0, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/gms/auth/be/i;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 531
    iget-boolean v0, p0, Lcom/google/android/gms/auth/be/i;->f:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 532
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v0, v0, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    const-string v2, "oauthAccessToken"

    iget-object v3, p0, Lcom/google/android/gms/auth/be/i;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v0, v0, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/gms/auth/be/i;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v0, v0, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    const-string v2, "sha1hash"

    iget-object v3, p0, Lcom/google/android/gms/auth/be/i;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ak;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1689
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 1696
    :goto_0
    return-object v0

    .line 1693
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/util/g;->b(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/auth/login/ak;

    invoke-direct {v2}, Lcom/google/android/gms/auth/login/ak;-><init>()V

    array-length v3, v0

    invoke-virtual {v2, v0, v3}, Lcom/google/protobuf/a/f;->a([BI)Lcom/google/protobuf/a/f;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/login/ak;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1694
    :catch_0
    move-exception v0

    .line 1695
    const-string v2, "GLSUser"

    const-string v3, "Failed to parse consent data"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 1696
    goto :goto_0
.end method

.method private e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v0, v0, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    const-string v2, "parent_aid"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1375
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1378
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/b/a;

    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->e:Lcom/google/android/gms/auth/a/c;

    iget-object v1, v1, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/b/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1959
    iget-boolean v0, p0, Lcom/google/android/gms/auth/be/i;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1963
    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/auth/be/i;->h:Ljava/lang/String;

    .line 1964
    iput-object v1, p0, Lcom/google/android/gms/auth/be/i;->g:Ljava/lang/String;

    .line 1965
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v0, v0, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 1966
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v0, v0, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    const-string v2, "sha1hash"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 1970
    :cond_1
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1987
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v0, v0, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    sget-object v2, Lcom/google/android/gms/auth/be/w;->i:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1989
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2004
    :cond_0
    return-void

    .line 1992
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v0, v0, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    sget-object v2, Lcom/google/android/gms/auth/be/w;->i:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 1995
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v1

    .line 1996
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 1997
    iget-object v4, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1998
    iget-object v4, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    iget-object v5, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 1999
    iget-object v4, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    iget-object v5, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 2000
    iget-object v4, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-static {v4, v3, v5}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1996
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static g(Ljava/lang/String;)Ljava/util/Map;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 2259
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2260
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2261
    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 2262
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 2263
    if-ltz v6, :cond_0

    .line 2264
    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2261
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2267
    :cond_1
    return-object v2
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 2475
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2476
    const/4 v0, 0x0

    .line 2491
    :goto_0
    return-object v0

    .line 2478
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->g:Ljava/lang/String;

    .line 2480
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v2, v1, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    .line 2481
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2482
    const-string v3, "access_secret"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2483
    const-string v0, "parent_aid"

    invoke-direct {p0}, Lcom/google/android/gms/auth/be/i;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2484
    const-string v0, "oauthAccessToken"

    iget-object v3, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    const-string v4, "oauthAccessToken"

    invoke-virtual {v2, v3, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2487
    const-string v0, "sha1hash"

    iget-object v3, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    const-string v4, "sha1hash"

    invoke-virtual {v2, v3, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2488
    sget-object v0, Lcom/google/android/gms/auth/be/w;->i:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    sget-object v4, Lcom/google/android/gms/auth/be/w;->i:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v4}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2490
    const-string v0, "flags"

    iget-object v3, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    const-string v4, "flags"

    invoke-virtual {v2, v3, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 2491
    goto :goto_0

    .line 2478
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->h:Ljava/lang/String;

    goto :goto_1
.end method

.method protected final a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 7

    .prologue
    .line 1543
    if-nez p5, :cond_0

    .line 1544
    invoke-virtual {p1, p4}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    .line 1549
    :cond_0
    if-eqz p3, :cond_4

    .line 1550
    const-string v1, ","

    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1551
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 1552
    sget-object v5, Lcom/google/android/gms/auth/be/w;->B:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v5}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1553
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->l()Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    .line 1557
    :cond_1
    sget-object v5, Lcom/google/android/gms/auth/be/w;->D:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v5}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1558
    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->n()Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    .line 1551
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1562
    :cond_3
    invoke-direct {p0, p3}, Lcom/google/android/gms/auth/be/i;->f(Ljava/lang/String;)V

    .line 1565
    :cond_4
    if-eqz p2, :cond_5

    .line 1566
    invoke-virtual {p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    .line 1570
    :cond_5
    if-eqz p6, :cond_6

    if-eqz p7, :cond_6

    .line 1571
    invoke-virtual {p1, p6}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->f(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v1

    invoke-virtual {v1, p7}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->g(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    .line 1574
    :cond_6
    if-eqz p8, :cond_7

    .line 1575
    invoke-virtual {p1, p8}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->e(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    .line 1578
    :cond_7
    if-eqz p9, :cond_8

    .line 1579
    move-object/from16 v0, p9

    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->h(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    .line 1582
    :cond_8
    if-eqz p10, :cond_9

    .line 1583
    move-object/from16 v0, p10

    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->i(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    .line 1585
    :cond_9
    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v1

    return-object v1
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;Ljava/util/Map;ILjava/lang/String;ZZLjava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 13

    .prologue
    .line 1710
    const-string v1, "SID"

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LSID"

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object/from16 v1, p4

    :goto_0
    const-string v2, "GLSUser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " extracting token using key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/lang/String;

    .line 1711
    sget-object v1, Lcom/google/android/gms/auth/be/w;->c:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 1714
    sget-object v1, Lcom/google/android/gms/auth/be/w;->o:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_4

    if-eqz p5, :cond_2

    const/4 v1, 0x0

    .line 1725
    :goto_1
    if-eqz v1, :cond_7

    .line 1850
    :goto_2
    return-object p1

    .line 1710
    :cond_1
    sget-object v1, Lcom/google/android/gms/auth/be/w;->a:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1714
    :cond_2
    if-nez v12, :cond_3

    if-eqz v7, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->y:Lcom/google/android/gms/auth/firstparty/shared/k;

    move-object/from16 v0, p4

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/android/gms/auth/be/i;->a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;Ljava/util/Map;Lcom/google/android/gms/auth/firstparty/shared/k;Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const-string v2, "auto"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " Permission for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to access "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will be managed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v1, "1"

    sget-object v2, Lcom/google/android/gms/auth/be/w;->p:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "remotely."

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/auth/be/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;)V

    :goto_3
    const-string v1, "GLSUser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_5
    const-string v1, "locally."

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "1"

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/auth/be/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;)V

    goto :goto_3

    :cond_6
    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->y:Lcom/google/android/gms/auth/firstparty/shared/k;

    move-object/from16 v0, p4

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/android/gms/auth/be/i;->a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;Ljava/util/Map;Lcom/google/android/gms/auth/firstparty/shared/k;Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    const/4 v1, 0x1

    goto/16 :goto_1

    .line 1731
    :cond_7
    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1}, Lcom/google/android/gms/auth/be/i;->a(Ljava/util/Map;Z)V

    .line 1733
    if-eqz v12, :cond_10

    .line 1736
    sget-object v1, Lcom/google/android/gms/auth/be/w;->t:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1737
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    .line 1738
    :goto_4
    invoke-virtual {p1, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->c(Z)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    .line 1739
    iget-boolean v2, p0, Lcom/google/android/gms/auth/be/i;->a:Z

    if-eqz v2, :cond_8

    .line 1740
    const-string v2, "GLSUser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " canUpgradePlusValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    :cond_8
    iget-boolean v1, p0, Lcom/google/android/gms/auth/be/i;->d:Z

    if-eqz v1, :cond_c

    .line 1762
    const-string v1, "SID"

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "LSID"

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1767
    :cond_9
    const-string v1, "SID"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1768
    const-string v1, "LSID"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 1769
    if-eqz v5, :cond_a

    .line 1770
    const-string v2, "SID"

    const/4 v6, 0x0

    move-object v1, p0

    move/from16 v3, p3

    move-object/from16 v4, p7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/auth/be/i;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    :cond_a
    if-eqz v7, :cond_b

    .line 1773
    const-string v2, "LSID"

    const/4 v6, 0x0

    move-object v1, p0

    move/from16 v3, p3

    move-object/from16 v4, p7

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/auth/be/i;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    :cond_b
    :goto_5
    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->l:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 1782
    invoke-direct {p0}, Lcom/google/android/gms/auth/be/i;->c()V

    .line 1783
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/auth/be/i;->l:Ljava/lang/String;

    .line 1786
    :cond_c
    sget-object v1, Lcom/google/android/gms/auth/be/w;->b:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1787
    sget-object v1, Lcom/google/android/gms/auth/be/w;->i:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1788
    sget-object v1, Lcom/google/android/gms/auth/be/w;->v:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1789
    sget-object v1, Lcom/google/android/gms/auth/be/w;->w:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1790
    sget-object v1, Lcom/google/android/gms/auth/be/w;->l:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1791
    sget-object v1, Lcom/google/android/gms/auth/be/w;->x:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1792
    sget-object v1, Lcom/google/android/gms/auth/be/w;->y:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1793
    iget-boolean v1, p0, Lcom/google/android/gms/auth/be/i;->d:Z

    if-nez v1, :cond_f

    const/4 v6, 0x1

    :goto_6
    move-object v1, p0

    move-object v2, p1

    move-object v5, v12

    invoke-virtual/range {v1 .. v11}, Lcom/google/android/gms/auth/be/i;->a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object p1

    goto/16 :goto_2

    .line 1737
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 1777
    :cond_e
    sget-object v1, Lcom/google/android/gms/auth/be/w;->q:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v1, p0

    move-object/from16 v2, p4

    move/from16 v3, p3

    move-object/from16 v4, p7

    move-object v5, v12

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/auth/be/i;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1793
    :cond_f
    const/4 v6, 0x0

    goto :goto_6

    .line 1807
    :cond_10
    if-nez v7, :cond_11

    .line 1808
    const-string v1, "GLSUser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t get error message from reply:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->k:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v7

    .line 1813
    :cond_11
    const-string v1, "badauth"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1814
    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->b:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v7

    .line 1816
    :cond_12
    invoke-static {v7}, Lcom/google/android/gms/auth/a/h;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v1

    .line 1817
    move-object/from16 v0, p4

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/android/gms/auth/be/i;->a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;Ljava/util/Map;Lcom/google/android/gms/auth/firstparty/shared/k;Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object p1

    .line 1819
    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/k;->l:Lcom/google/android/gms/auth/firstparty/shared/k;

    if-ne v1, v2, :cond_14

    .line 1820
    sget-object v1, Lcom/google/android/gms/auth/be/w;->e:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1821
    sget-object v2, Lcom/google/android/gms/auth/be/w;->g:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1822
    move-object/from16 v0, p7

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/auth/be/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;

    move-result-object v1

    .line 1824
    invoke-virtual {p1, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a(Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    .line 1849
    :cond_13
    :goto_7
    const-string v1, "GLSUser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GLS error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/auth/be/i;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1825
    :cond_14
    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/k;->b:Lcom/google/android/gms/auth/firstparty/shared/k;

    if-ne v1, v2, :cond_16

    if-nez p6, :cond_16

    .line 1832
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_15

    .line 1833
    invoke-direct {p0}, Lcom/google/android/gms/auth/be/i;->f()V

    goto :goto_7

    .line 1835
    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->g:Ljava/lang/String;

    if-nez v1, :cond_13

    .line 1836
    invoke-direct {p0}, Lcom/google/android/gms/auth/be/i;->f()V

    goto :goto_7

    .line 1842
    :cond_16
    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/k;->x:Lcom/google/android/gms/auth/firstparty/shared/k;

    if-ne v1, v2, :cond_13

    .line 1844
    invoke-direct {p0}, Lcom/google/android/gms/auth/be/i;->f()V

    .line 1846
    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v1, v1, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    const-string v3, "oauthAccessToken"

    const-string v4, "1"

    invoke-virtual {v1, v2, v3, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Ljava/lang/String;Z)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 19

    .prologue
    .line 1067
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->a()Ljava/lang/String;

    move-result-object v18

    .line 1068
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->b()Ljava/lang/String;

    move-result-object v14

    .line 1072
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/be/i;->e:Lcom/google/android/gms/auth/a/c;

    iget-object v2, v2, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-static {v2, v0, v14}, Lcom/google/android/gms/common/util/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1076
    new-instance v2, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    invoke-direct {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;-><init>()V

    sget-object v3, Lcom/google/android/gms/auth/firstparty/shared/k;->C:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v2

    .line 1176
    :cond_0
    :goto_0
    return-object v2

    .line 1078
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->b()Ljava/lang/String;

    move-result-object v2

    .line 1079
    if-nez v2, :cond_1f

    .line 1080
    const-string v2, "ac2dm"

    move-object v15, v2

    .line 1082
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->d()I

    move-result v16

    .line 1083
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->b()Ljava/lang/String;

    move-result-object v17

    .line 1087
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->h()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz p5, :cond_5

    const-string v2, "^^_account_id_^^"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1089
    if-nez v15, :cond_1e

    const-string v2, "ac2dm"

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/gms/auth/be/i;->a:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " Looking for cached grant for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to access "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on behalf of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/auth/be/i;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "GLSUser"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/gms/auth/be/i;->d:Z

    if-eqz v3, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/auth/be/i;->d()Z

    move-result v3

    if-eqz v3, :cond_f

    if-nez v2, :cond_9

    const/4 v6, 0x0

    :cond_3
    :goto_3
    if-eqz v6, :cond_f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/gms/auth/be/i;->a:Z

    if-eqz v3, :cond_4

    const-string v3, "GLSUser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Return from cache "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v3, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    invoke-direct {v3}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;-><init>()V

    invoke-virtual {v3}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->u()Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/auth/be/i;->b:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v12}, Lcom/google/android/gms/auth/be/i;->a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v2

    .line 1090
    :goto_4
    if-nez v2, :cond_0

    .line 1094
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->d()Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

    move-result-object v6

    .line 1095
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->e()Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    move-result-object v7

    .line 1096
    sget-object v2, Lcom/google/android/gms/auth/be/l;->a:[I

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->m()Lcom/google/android/gms/auth/firstparty/dataservice/az;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/auth/firstparty/dataservice/az;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1122
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_10

    if-nez v16, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gms/auth/be/i;->a:Z

    if-eqz v2, :cond_6

    const-string v2, "GLSUser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has_permission because running in pre SDK 11 AccountManager"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v9, 0x1

    .line 1123
    :cond_7
    :goto_5
    if-eqz v9, :cond_1d

    .line 1124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v2, v2, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    .line 1125
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/google/android/gms/auth/be/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1126
    if-nez v6, :cond_1c

    .line 1128
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".pacl.visible_actions"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1131
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ".pacl.data"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1134
    if-eqz v4, :cond_1c

    .line 1135
    new-instance v6, Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

    invoke-direct {v6, v3, v4}, Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v6

    .line 1138
    :goto_6
    if-nez v7, :cond_1b

    .line 1140
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".all_circles_visible"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1143
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1144
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".all_contacts_visible"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1147
    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1148
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ".visible_graph"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1151
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".show_circles"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v6, v10}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1154
    const-string v10, "1"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1155
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".show_contacts"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1158
    const-string v11, "1"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 1159
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ".has_show_circles"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v11, v8}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1162
    const-string v8, "1"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1164
    if-nez v3, :cond_8

    if-nez v5, :cond_8

    if-eqz v4, :cond_1b

    .line 1165
    :cond_8
    new-instance v2, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    move v7, v10

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;-><init>(ZLjava/lang/String;ZZZZ)V

    move-object/from16 v17, v2

    .line 1176
    :goto_7
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->g()Z

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->f()Z

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->h()Z

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->c()Landroid/os/Bundle;

    move-result-object v14

    move-object/from16 v2, p0

    move-object v3, v15

    move-object/from16 v4, v18

    move-object/from16 v13, p1

    move-object/from16 v15, p3

    move-object/from16 v18, p4

    invoke-virtual/range {v2 .. v18}, Lcom/google/android/gms/auth/be/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZLcom/google/android/gms/auth/firstparty/shared/AppDescription;Landroid/os/Bundle;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v2

    goto/16 :goto_0

    .line 1089
    :cond_9
    if-nez v16, :cond_a

    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_a
    const-string v3, "weblogin:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_b
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/auth/be/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/gms/auth/be/i;->a:Z

    if-eqz v3, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "No cache hit because unable to get cache key for uid: %s, service: %s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "GLSUser"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v4, v4, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    invoke-virtual {v4, v5, v3}, Landroid/accounts/AccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v4, v4, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "EXP:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    cmp-long v3, v4, v8

    if-gez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v3, v3, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    const-string v4, "com.google"

    invoke-virtual {v3, v4, v6}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 1099
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->d()I

    const-string v4, "1"

    move-object/from16 v2, p0

    move-object v5, v14

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/auth/be/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;)V

    .line 1106
    const/4 v9, 0x1

    move-object/from16 v17, v7

    move-object/from16 v16, v6

    .line 1107
    goto/16 :goto_7

    .line 1109
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->d()I

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object v11, v14

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/auth/be/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;)V

    .line 1116
    const/4 v9, 0x0

    move-object/from16 v17, v7

    move-object/from16 v16, v6

    .line 1117
    goto/16 :goto_7

    .line 1122
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v2, v2, Lcom/google/android/gms/auth/be/h;->d:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gms/auth/be/i;->a:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Not has_permission because %s = %s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GLSUser"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v15, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v8, v8, Lcom/google/android/gms/auth/be/h;->d:Ljava/lang/String;

    aput-object v8, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/4 v9, 0x0

    goto/16 :goto_5

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v2, v2, Lcom/google/android/gms/auth/be/h;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, v16

    if-ne v0, v3, :cond_15

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/auth/be/i;->e:Lcom/google/android/gms/auth/a/c;

    move/from16 v0, v16

    invoke-virtual {v4, v3, v0}, Lcom/google/android/gms/auth/a/c;->a(II)Z

    move-result v3

    if-nez v2, :cond_13

    if-eqz v3, :cond_16

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/gms/auth/be/i;->a:Z

    if-eqz v4, :cond_14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has_permission because either isSameUser (%b) or isSameSignature (%b)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GLSUser"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v8, v9

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v8, v2

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const/4 v9, 0x1

    goto/16 :goto_5

    :cond_15
    const/4 v2, 0x0

    goto :goto_8

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v2, v2, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/google/android/gms/auth/be/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "1"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/auth/be/i;->e:Lcom/google/android/gms/auth/a/c;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/google/android/gms/auth/a/c;->a(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/be/i;->e:Lcom/google/android/gms/auth/a/c;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_17
    if-nez v2, :cond_18

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :cond_18
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "perm."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v3, v3, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    invoke-virtual {v3, v4, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "1"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object v9, v15

    move-object/from16 v11, v17

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/auth/be/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;)V

    :cond_19
    const-string v2, "1"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "perm."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v3, v3, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    invoke-virtual {v3, v4, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "1"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object v9, v15

    move-object/from16 v11, v17

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/auth/be/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;)V

    :cond_1a
    const-string v2, "1"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gms/auth/be/i;->a:Z

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has_permission: %b - tokenType: %s, uid: %d, packageName:  %s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GLSUser"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    aput-object v15, v4, v5

    const/4 v5, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x3

    aput-object v17, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_1b
    move-object/from16 v17, v7

    goto/16 :goto_7

    :cond_1c
    move-object/from16 v16, v6

    goto/16 :goto_6

    :cond_1d
    move-object/from16 v17, v7

    move-object/from16 v16, v6

    goto/16 :goto_7

    :cond_1e
    move-object v2, v15

    goto/16 :goto_2

    :cond_1f
    move-object v15, v2

    goto/16 :goto_1

    .line 1096
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 18

    .prologue
    .line 424
    const-string v2, "ac2dm"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/auth/be/i;->e:Lcom/google/android/gms/auth/a/c;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/a/c;->a()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v12

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v14, p2

    invoke-virtual/range {v1 .. v17}, Lcom/google/android/gms/auth/be/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZLcom/google/android/gms/auth/firstparty/shared/AppDescription;Landroid/os/Bundle;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v1

    .line 442
    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 443
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/auth/be/i;->c()V

    .line 446
    new-instance v2, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    invoke-direct {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;-><init>()V

    sget-object v3, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v1

    .line 450
    :cond_0
    return-object v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 18

    .prologue
    .line 462
    const-string v2, "ac2dm"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/auth/be/i;->e:Lcom/google/android/gms/auth/a/c;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/a/c;->a()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v12

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v14, p3

    invoke-virtual/range {v1 .. v17}, Lcom/google/android/gms/auth/be/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZLcom/google/android/gms/auth/firstparty/shared/AppDescription;Landroid/os/Bundle;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v1

    .line 480
    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 481
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/auth/be/i;->c()V

    .line 483
    new-instance v2, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    invoke-direct {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;-><init>()V

    sget-object v3, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v1

    .line 487
    :cond_0
    return-object v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/os/Bundle;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 19

    .prologue
    .line 1403
    :try_start_0
    const-string v3, "LSID"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/be/i;->e:Lcom/google/android/gms/auth/a/c;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/a/c;->a()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v14, p10

    invoke-virtual/range {v2 .. v18}, Lcom/google/android/gms/auth/be/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZLcom/google/android/gms/auth/firstparty/shared/AppDescription;Landroid/os/Bundle;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v3

    .line 1420
    invoke-virtual {v3}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->c()Ljava/lang/String;

    move-result-object v2

    .line 1421
    if-nez v2, :cond_1

    .line 1422
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gms/auth/be/i;->a:Z

    if-eqz v2, :cond_0

    .line 1423
    const-string v2, "%s LSID wasn\'t retrieved due to status: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v3}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b()Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1427
    const-string v3, "GLSUser"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :cond_0
    new-instance v2, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    invoke-direct {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;-><init>()V

    sget-object v3, Lcom/google/android/gms/auth/firstparty/shared/k;->b:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v2

    .line 1525
    :goto_0
    return-object v2

    .line 1431
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v4, v4, Lcom/google/android/gms/auth/be/h;->a:Landroid/content/Context;

    const-string v5, "device_country"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1436
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/auth/be/i;->e:Lcom/google/android/gms/auth/a/c;

    iget-object v5, v5, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1439
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v6, v6, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    const-string v8, "parent_aid"

    invoke-virtual {v6, v7, v8}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1447
    new-instance v7, Lcom/google/android/gms/auth/be/b;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/auth/be/i;->e:Lcom/google/android/gms/auth/a/c;

    invoke-direct {v7, v8}, Lcom/google/android/gms/auth/be/b;-><init>(Lcom/google/android/gms/auth/a/c;)V

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/google/android/gms/auth/be/b;->e(Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/common/b/a;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/auth/be/i;->e:Lcom/google/android/gms/auth/a/c;

    iget-object v9, v9, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/google/android/gms/common/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Lcom/google/android/gms/common/b/a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/auth/be/b;->c(Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/android/gms/auth/be/b;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/auth/be/b;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/gms/auth/be/i;->f:Z

    invoke-virtual {v4, v5}, Lcom/google/android/gms/auth/be/b;->a(Z)Lcom/google/android/gms/auth/be/b;

    move-result-object v4

    const-string v5, "LSID"

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/auth/be/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/auth/be/v;->z:Lcom/google/android/gms/auth/be/v;

    move-object/from16 v0, p2

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/auth/be/v;->y:Lcom/google/android/gms/auth/be/v;

    move-object/from16 v0, p3

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/auth/be/v;->B:Lcom/google/android/gms/auth/be/v;

    move-object/from16 v0, p4

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/auth/be/v;->L:Lcom/google/android/gms/auth/be/v;

    move/from16 v0, p5

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Z)Lcom/google/android/gms/auth/be/b;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/auth/be/v;->K:Lcom/google/android/gms/auth/be/v;

    move/from16 v0, p6

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Z)Lcom/google/android/gms/auth/be/b;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/auth/be/v;->G:Lcom/google/android/gms/auth/be/v;

    move-object/from16 v0, p7

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Lcom/google/android/gms/auth/be/b;->b(Z)Lcom/google/android/gms/auth/be/b;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/auth/be/b;->d(Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    move-result-object v2

    .line 1463
    new-instance v4, Lorg/json/JSONStringer;

    invoke-direct {v4}, Lorg/json/JSONStringer;-><init>()V

    .line 1469
    invoke-virtual {v4}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 1470
    iget-object v2, v2, Lcom/google/android/gms/auth/be/b;->a:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    .line 1471
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v6

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1521
    :catch_0
    move-exception v2

    .line 1522
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/gms/auth/be/i;->a:Z

    if-eqz v3, :cond_2

    .line 1523
    const-string v3, "GLSUser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " createProfile JSONException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1525
    :cond_2
    new-instance v2, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    invoke-direct {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;-><init>()V

    sget-object v3, Lcom/google/android/gms/auth/firstparty/shared/k;->m:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v2

    goto/16 :goto_0

    .line 1475
    :cond_3
    :try_start_1
    sget-object v2, Lcom/google/android/gms/auth/be/d;->aA:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    int-to-long v6, v5

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    .line 1476
    sget-object v2, Lcom/google/android/gms/auth/be/d;->aB:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/auth/be/i;->e:Lcom/google/android/gms/auth/a/c;

    iget v5, v5, Lcom/google/android/gms/auth/a/c;->d:I

    int-to-long v6, v5

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    .line 1478
    invoke-virtual {v4}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 1483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/auth/be/i;->e:Lcom/google/android/gms/auth/a/c;

    iget-object v6, v6, Lcom/google/android/gms/auth/a/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/auth/be/h;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 1487
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    sget-object v2, Lcom/google/android/gms/auth/b/a;->d:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v2}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v7, "createProfile"

    invoke-virtual {v6, v2, v4, v7, v5}, Lcom/google/android/gms/auth/be/h;->b(Ljava/lang/String;Lorg/json/JSONStringer;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1493
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1494
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " createProfile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/auth/be/i;->a(Ljava/lang/String;)V

    .line 1495
    invoke-static {v2}, Lcom/google/android/gms/auth/a/h;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v4

    .line 1496
    sget-object v5, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    if-eq v5, v4, :cond_4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/gms/auth/be/i;->a:Z

    if-eqz v5, :cond_4

    .line 1497
    const-string v5, "%s createProfile SetupServlet request failed with status: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v4}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1501
    const-string v6, "GLSUser"

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    :cond_4
    sget-object v5, Lcom/google/android/gms/auth/be/w;->i:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v5}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1510
    sget-object v5, Lcom/google/android/gms/auth/be/w;->i:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v5}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1514
    if-eqz v2, :cond_5

    .line 1515
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/auth/be/i;->f(Ljava/lang/String;)V

    .line 1518
    :cond_5
    invoke-virtual {v3, v4}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    .line 1519
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v3

    .line 1520
    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZLcom/google/android/gms/auth/firstparty/shared/AppDescription;Landroid/os/Bundle;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 18

    .prologue
    .line 962
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gms/auth/be/i;->a:Z

    if-eqz v2, :cond_0

    .line 963
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " Requesting Google to grant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p11 .. p11}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " access to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on behalf of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 970
    const-string v3, "GLSUser"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_0
    const/4 v2, 0x0

    .line 973
    if-eqz p3, :cond_2

    .line 974
    const/4 v2, 0x1

    .line 975
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/gms/auth/be/i;->g:Ljava/lang/String;

    .line 976
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/be/i;->b(Ljava/lang/String;)V

    move/from16 v17, v2

    :goto_0
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p6

    move/from16 v9, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    .line 982
    invoke-virtual/range {v2 .. v16}, Lcom/google/android/gms/auth/be/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLcom/google/android/gms/auth/firstparty/shared/AppDescription;Landroid/os/Bundle;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 997
    new-instance v3, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    invoke-direct {v3}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;-><init>()V

    invoke-virtual/range {p11 .. p11}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->d()I

    move-result v5

    invoke-virtual/range {p11 .. p11}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->b()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    move/from16 v7, p7

    move/from16 v8, p9

    move-object/from16 v10, p14

    move-object/from16 v11, p15

    invoke-virtual/range {v2 .. v11}, Lcom/google/android/gms/auth/be/i;->a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;Ljava/util/Map;ILjava/lang/String;ZZLjava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v2

    .line 1008
    invoke-virtual {v2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz v17, :cond_1

    .line 1009
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/auth/be/i;->c()V

    .line 1011
    :cond_1
    return-object v2

    .line 977
    :cond_2
    if-eqz p4, :cond_3

    .line 978
    const/4 v2, 0x1

    .line 979
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/gms/auth/be/i;->g:Ljava/lang/String;

    .line 980
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/gms/auth/be/i;->h:Ljava/lang/String;

    :cond_3
    move/from16 v17, v2

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/os/Bundle;ZLjava/lang/String;ZZLcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;Ljava/lang/String;Z)Ljava/util/List;
    .locals 8

    .prologue
    .line 1246
    new-instance v3, Lcom/google/android/gms/auth/be/b;

    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->e:Lcom/google/android/gms/auth/a/c;

    invoke-direct {v3, v1}, Lcom/google/android/gms/auth/be/b;-><init>(Lcom/google/android/gms/auth/a/c;)V

    .line 1247
    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v1, v1, Lcom/google/android/gms/auth/be/h;->a:Landroid/content/Context;

    const-string v2, "device_country"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lcom/google/android/gms/common/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1251
    new-instance v1, Lcom/google/android/gms/common/b/a;

    iget-object v4, p0, Lcom/google/android/gms/auth/be/i;->e:Lcom/google/android/gms/auth/a/c;

    iget-object v4, v4, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/google/android/gms/common/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/b/a;->a()Ljava/lang/String;

    move-result-object v4

    .line 1252
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1254
    if-nez p9, :cond_0

    if-nez p5, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v1, v1, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    iget-object v6, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    const-string v7, "GoogleUserId"

    invoke-virtual {v1, v6, v7}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    :cond_0
    const/4 v1, 0x1

    .line 1257
    :goto_0
    invoke-virtual {v3, v2}, Lcom/google/android/gms/auth/be/b;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    move-result-object v2

    sget-object v6, Lcom/google/android/gms/auth/be/v;->D:Lcom/google/android/gms/auth/be/v;

    move/from16 v0, p10

    invoke-virtual {v2, v6, v0}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Z)Lcom/google/android/gms/auth/be/b;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/android/gms/auth/be/b;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    move-result-object v2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v6, Lcom/google/android/gms/auth/be/v;->I:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {v2, v6, v5}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;I)Lcom/google/android/gms/auth/be/b;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/auth/be/i;->e:Lcom/google/android/gms/auth/a/c;

    iget v5, v5, Lcom/google/android/gms/auth/a/c;->d:I

    sget-object v6, Lcom/google/android/gms/auth/be/v;->s:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {v2, v6, v5}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;I)Lcom/google/android/gms/auth/be/b;

    const-string v5, "HOSTED_OR_GOOGLE"

    const-string v6, "accountType"

    invoke-virtual {v2, v6, v5}, Lcom/google/android/gms/auth/be/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/auth/be/i;->e:Lcom/google/android/gms/auth/a/c;

    invoke-virtual {v5, p3}, Lcom/google/android/gms/auth/a/c;->b(I)Z

    move-result v5

    sget-object v6, Lcom/google/android/gms/auth/be/v;->t:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {v2, v6, v5}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Z)Lcom/google/android/gms/auth/be/b;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/auth/be/b;->e(Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/auth/be/v;->p:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {v2, v5, p7}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Z)Lcom/google/android/gms/auth/be/b;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/auth/be/v;->C:Lcom/google/android/gms/auth/be/v;

    move/from16 v0, p9

    invoke-virtual {v2, v5, v0}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Z)Lcom/google/android/gms/auth/be/b;

    move-result-object v2

    invoke-virtual {v2, p5}, Lcom/google/android/gms/auth/be/b;->b(Z)Lcom/google/android/gms/auth/be/b;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/auth/be/v;->c:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {v2, v5, p1}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    move-result-object v2

    const-string v5, "android"

    sget-object v6, Lcom/google/android/gms/auth/be/v;->i:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {v2, v6, v5}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/auth/be/b;->c(Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    move-result-object v2

    iget-boolean v4, p0, Lcom/google/android/gms/auth/be/i;->f:Z

    invoke-virtual {v2, v4}, Lcom/google/android/gms/auth/be/b;->a(Z)Lcom/google/android/gms/auth/be/b;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/auth/be/v;->E:Lcom/google/android/gms/auth/be/v;

    move/from16 v0, p15

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Z)Lcom/google/android/gms/auth/be/b;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/auth/be/v;->F:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {v2, v4, v1}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Z)Lcom/google/android/gms/auth/be/b;

    .line 1274
    if-eqz p11, :cond_1

    .line 1275
    invoke-virtual/range {p11 .. p11}, Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p11 .. p11}, Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1279
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    if-eqz v1, :cond_2

    .line 1286
    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v1, v1, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    const-string v4, "parent_aid"

    invoke-virtual {v1, v2, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1287
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1288
    invoke-virtual {v3, v1}, Lcom/google/android/gms/auth/be/b;->d(Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    .line 1297
    :cond_2
    if-eqz p12, :cond_3

    .line 1298
    invoke-virtual/range {p12 .. p12}, Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/auth/be/v;->M:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    .line 1302
    invoke-virtual/range {p12 .. p12}, Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, v3, Lcom/google/android/gms/auth/be/b;->a:Ljava/util/List;

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v5, Lcom/google/android/gms/auth/be/v;->N:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {v5}, Lcom/google/android/gms/auth/be/v;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1304
    :cond_3
    if-eqz p13, :cond_6

    .line 1305
    invoke-virtual/range {p13 .. p13}, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p13 .. p13}, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1306
    :cond_4
    invoke-virtual/range {p13 .. p13}, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->a()Z

    move-result v4

    invoke-virtual/range {p13 .. p13}, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/auth/be/v;->P:Lcom/google/android/gms/auth/be/v;

    if-eqz v4, :cond_c

    const-string v1, "1"

    :goto_2
    invoke-virtual {v3, v5, v1}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/auth/be/v;->O:Lcom/google/android/gms/auth/be/v;

    if-eqz v4, :cond_d

    const-string v1, ""

    :goto_3
    invoke-virtual {v5, v6, v1}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    .line 1311
    :cond_5
    invoke-virtual/range {p13 .. p13}, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->e()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1312
    invoke-virtual/range {p13 .. p13}, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->c()Z

    move-result v1

    sget-object v2, Lcom/google/android/gms/auth/be/v;->Q:Lcom/google/android/gms/auth/be/v;

    if-eqz v1, :cond_e

    const-string v1, "1"

    :goto_4
    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    .line 1317
    :cond_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_7

    if-eqz p3, :cond_10

    .line 1318
    :cond_7
    sget-object v1, Lcom/google/android/gms/auth/be/v;->q:Lcom/google/android/gms/auth/be/v;

    sget-object v2, Lcom/google/android/gms/auth/be/v;->r:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {v3, v1, v2, p4}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Lcom/google/android/gms/auth/be/v;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    .line 1324
    if-eqz p6, :cond_10

    .line 1325
    sget-object v1, Lcom/google/android/gms/auth/be/v;->v:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/v;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/auth/be/v;->v:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    .line 1332
    const-string v1, "clientPackageName"

    invoke-virtual {p6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1334
    if-eqz v1, :cond_8

    .line 1335
    sget-object v2, Lcom/google/android/gms/auth/be/v;->S:Lcom/google/android/gms/auth/be/v;

    sget-object v4, Lcom/google/android/gms/auth/be/v;->T:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {v3, v2, v4, v1}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Lcom/google/android/gms/auth/be/v;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    .line 1337
    :cond_8
    invoke-virtual {p6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1338
    const-string v4, "_opt_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1339
    const-string v4, "_opt_"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1340
    invoke-virtual {p6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1341
    invoke-virtual {v3, v4, v1}, Lcom/google/android/gms/auth/be/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    goto :goto_5

    .line 1254
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1275
    :cond_b
    sget-object v4, Lcom/google/android/gms/auth/be/v;->k:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {v3, v4, v1}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    move-result-object v1

    sget-object v4, Lcom/google/android/gms/auth/be/v;->j:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    goto/16 :goto_1

    .line 1306
    :cond_c
    const-string v1, "0"

    goto/16 :goto_2

    :cond_d
    move-object v1, v2

    goto/16 :goto_3

    .line 1312
    :cond_e
    const-string v1, "0"

    goto :goto_4

    .line 1342
    :cond_f
    sget-object v4, Lcom/google/android/gms/auth/be/v;->u:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {v4}, Lcom/google/android/gms/auth/be/v;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1344
    invoke-virtual {p6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/auth/be/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    goto :goto_5

    .line 1349
    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->h:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 1351
    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->h:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/auth/be/v;->d:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    .line 1364
    :goto_6
    sget-object v1, Lcom/google/android/gms/auth/be/v;->R:Lcom/google/android/gms/auth/be/v;

    move-object/from16 v0, p14

    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    .line 1366
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v3, Lcom/google/android/gms/auth/be/b;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 1354
    :cond_11
    if-nez p8, :cond_12

    .line 1358
    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->g:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/auth/be/v;->b:Lcom/google/android/gms/auth/be/v;

    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    goto :goto_6

    .line 1361
    :cond_12
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    sget-object v1, Lcom/google/android/gms/auth/be/v;->w:Lcom/google/android/gms/auth/be/v;

    const/4 v2, 0x1

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Z)Lcom/google/android/gms/auth/be/b;

    :cond_13
    sget-object v1, Lcom/google/android/gms/auth/be/v;->b:Lcom/google/android/gms/auth/be/v;

    move-object/from16 v0, p8

    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/auth/be/b;->a(Lcom/google/android/gms/auth/be/v;Ljava/lang/String;)Lcom/google/android/gms/auth/be/b;

    goto :goto_6
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLcom/google/android/gms/auth/firstparty/shared/AppDescription;Landroid/os/Bundle;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;Ljava/lang/String;)Ljava/util/Map;
    .locals 20

    .prologue
    .line 564
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 565
    const/16 v19, 0x0

    .line 566
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/auth/be/i;->d()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " No secrets - returning BAD_AUTH %s %s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 569
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/auth/be/i;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 570
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/auth/be/h;->a(Ljava/lang/String;)V

    .line 571
    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/k;->b:Lcom/google/android/gms/auth/firstparty/shared/k;

    .line 574
    sget-object v3, Lcom/google/android/gms/auth/firstparty/shared/k;->T:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v18

    .line 670
    :goto_0
    return-object v2

    .line 579
    :cond_0
    if-nez p8, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    if-eqz v2, :cond_9

    sget-object v2, Lcom/google/android/gms/auth/b/a;->J:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v2}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v3, v2, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    const-string v4, "com.google.android.gms.auth.email_check_time"

    invoke-virtual {v3, v2, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 584
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 585
    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/16 v8, 0x3e8

    sget-object v2, Lcom/google/android/gms/auth/b/a;->J:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v2}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    mul-long/2addr v8, v10

    cmp-long v2, v6, v8

    if-lez v2, :cond_9

    .line 587
    :cond_1
    const/16 p8, 0x1

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    const-string v6, "com.google.android.gms.auth.email_check_time"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v6, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v17, p8

    .line 593
    :goto_1
    invoke-virtual/range {p9 .. p9}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->d()I

    move-result v5

    invoke-virtual/range {p9 .. p9}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->b()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p4

    move-object/from16 v8, p10

    move/from16 v9, p5

    move-object/from16 v10, p3

    move/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    invoke-virtual/range {v2 .. v17}, Lcom/google/android/gms/auth/be/i;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/os/Bundle;ZLjava/lang/String;ZZLcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v8

    .line 609
    :try_start_0
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v4, v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p9 .. p9}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/auth/be/h;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    sget-object v3, Lcom/google/android/gms/auth/b/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v3}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/auth/be/i;->b:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ":"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/auth/be/h;->a(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lorg/apache/http/Header;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 631
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    .line 633
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 634
    const v4, 0x320d2

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/google/android/gms/auth/a/b;->a(ILjava/lang/String;)V

    .line 635
    invoke-static {v3}, Lcom/google/android/gms/auth/be/i;->g(Ljava/lang/String;)Ljava/util/Map;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 636
    :try_start_2
    const-string v4, "x-status"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v3, v4, v2}, Lcom/google/android/gms/auth/be/i;->a(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;I)V

    .line 640
    sget-object v2, Lcom/google/android/gms/auth/be/w;->c:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 641
    if-eqz v2, :cond_8

    .line 642
    invoke-static {v2}, Lcom/google/android/gms/auth/a/h;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/k;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 645
    :goto_2
    if-nez p6, :cond_2

    :try_start_3
    sget-object v2, Lcom/google/android/gms/auth/be/w;->b:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/google/android/gms/auth/be/w;->b:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 648
    const-string v5, "GLSUser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " email changed from "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " to "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v2, Lcom/google/android/gms/auth/be/w;->b:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    sget-object v2, Lcom/google/android/gms/auth/be/w;->b:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v5, v5, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    const-string v5, "updateAccountName %s -> %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    iget-object v9, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v9, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v6, v2, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    invoke-static {v2}, Lcom/google/android/gms/auth/be/i;->a(Landroid/accounts/Account;)Z

    move-result v2

    invoke-static {}, Lcom/google/android/gms/common/util/t;->a()Z

    move-result v7

    if-eqz v7, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2, v5}, Lcom/google/android/gms/auth/be/i;->a(Landroid/accounts/Account;ZLjava/lang/String;)V

    .line 652
    :cond_2
    :goto_3
    sget-object v2, Lcom/google/android/gms/auth/be/w;->k:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v5, v2, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    const-string v7, "GoogleUserId"

    sget-object v2, Lcom/google/android/gms/auth/be/w;->k:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 666
    :cond_3
    const v5, 0x320d2

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    if-nez v4, :cond_5

    const/4 v2, 0x0

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object p1, v6, v2

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 670
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " getAuthtoken("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") -> status: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/be/i;->a(Ljava/lang/String;)V

    move-object v2, v3

    goto/16 :goto_0

    .line 613
    :catch_0
    move-exception v2

    .line 614
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 650
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2, v5}, Lcom/google/android/gms/auth/be/i;->b(Landroid/accounts/Account;ZLjava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_3

    .line 658
    :catch_1
    move-exception v2

    .line 659
    :goto_5
    :try_start_5
    sget-object v4, Lcom/google/android/gms/auth/firstparty/shared/k;->m:Lcom/google/android/gms/auth/firstparty/shared/k;

    .line 660
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " IOException in getAuthtoken("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/gms/auth/be/i;->a(Ljava/lang/String;)V

    .line 662
    sget-object v5, Lcom/google/android/gms/auth/be/w;->c:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v5}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/auth/firstparty/shared/k;->m:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v6}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5, v2, v6}, Lcom/google/android/gms/auth/be/i;->a(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 666
    const v5, 0x320d2

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    if-nez v4, :cond_6

    const/4 v2, 0x0

    :goto_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object p1, v6, v2

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 670
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " getAuthtoken("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") -> status: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/be/i;->a(Ljava/lang/String;)V

    move-object v2, v3

    goto/16 :goto_0

    .line 666
    :cond_5
    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/k;->m:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/firstparty/shared/k;->ordinal()I

    move-result v2

    goto/16 :goto_4

    :cond_6
    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/k;->m:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/firstparty/shared/k;->ordinal()I

    move-result v2

    goto :goto_6

    :catchall_0
    move-exception v2

    move-object v3, v2

    move-object/from16 v4, v19

    :goto_7
    const v5, 0x320d2

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    if-nez v4, :cond_7

    const/4 v2, 0x0

    :goto_8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object p1, v6, v2

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 670
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/google/android/gms/auth/be/i;->k:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " getAuthtoken("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") -> status: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/be/i;->a(Ljava/lang/String;)V

    throw v3

    .line 666
    :cond_7
    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/k;->m:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/firstparty/shared/k;->ordinal()I

    move-result v2

    goto :goto_8

    :catchall_1
    move-exception v2

    move-object v3, v2

    goto :goto_7

    .line 658
    :catch_2
    move-exception v2

    move-object/from16 v4, v19

    move-object/from16 v3, v18

    goto/16 :goto_5

    :catch_3
    move-exception v2

    move-object/from16 v4, v19

    goto/16 :goto_5

    :cond_8
    move-object/from16 v4, v19

    goto/16 :goto_2

    :cond_9
    move/from16 v17, p8

    goto/16 :goto_1
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/be/h;->a(Ljava/lang/String;)V

    .line 230
    :cond_0
    return-void
.end method

.method protected final a(Ljava/util/Map;Z)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1861
    sget-object v0, Lcom/google/android/gms/auth/be/w;->s:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1862
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1863
    iput-object v0, p0, Lcom/google/android/gms/auth/be/i;->g:Ljava/lang/String;

    .line 1864
    iput-object v2, p0, Lcom/google/android/gms/auth/be/i;->h:Ljava/lang/String;

    .line 1865
    iput-object v2, p0, Lcom/google/android/gms/auth/be/i;->m:Ljava/lang/String;

    .line 1866
    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 1867
    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v1, v1, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    invoke-virtual {v1, v2, v0}, Landroid/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 1868
    iget-boolean v0, p0, Lcom/google/android/gms/auth/be/i;->f:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 1870
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v0, v0, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    const-string v2, "oauthAccessToken"

    iget-object v3, p0, Lcom/google/android/gms/auth/be/i;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v0, v0, Lcom/google/android/gms/auth/be/h;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/auth/be/i;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/auth/a/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/be/i;->h:Ljava/lang/String;

    .line 395
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/auth/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/be/i;->m:Ljava/lang/String;

    .line 396
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/i;->l:Ljava/lang/String;

    .line 397
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/be/i;->g:Ljava/lang/String;

    .line 398
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 402
    iput-object p1, p0, Lcom/google/android/gms/auth/be/i;->g:Ljava/lang/String;

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/be/i;->h:Ljava/lang/String;

    .line 404
    iput-object p1, p0, Lcom/google/android/gms/auth/be/i;->l:Ljava/lang/String;

    .line 405
    return-void
.end method

.method final d(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 495
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 496
    const-string v0, "flags"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->g:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->g:Ljava/lang/String;

    .line 498
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/gms/auth/be/i;->f:Z

    if-eqz v2, :cond_0

    .line 499
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-gt v2, v3, :cond_4

    .line 500
    const-string v2, "oauthAccessToken"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/auth/be/i;->m:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 506
    const-string v2, "sha1hash"

    iget-object v3, p0, Lcom/google/android/gms/auth/be/i;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :cond_1
    if-eqz p1, :cond_2

    .line 510
    sget-object v2, Lcom/google/android/gms/auth/be/w;->i:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/auth/be/i;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v2, v2, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    invoke-virtual {v2, v3, v0, v1}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 514
    iput-object v4, p0, Lcom/google/android/gms/auth/be/i;->l:Ljava/lang/String;

    .line 516
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->e:Lcom/google/android/gms/auth/a/c;

    iget-object v0, v0, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/be/q;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/q;

    move-result-object v1

    .line 518
    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/q;->a()Ljava/lang/String;

    move-result-object v2

    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->c:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/gms/auth/be/q;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/be/q;->a(Ljava/lang/String;)V

    .line 524
    return-void

    .line 497
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/auth/be/i;->h:Ljava/lang/String;

    goto :goto_0

    .line 502
    :cond_4
    const-string v2, "oauthAccessToken"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 523
    :catchall_0
    move-exception v0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/be/q;->a(Ljava/lang/String;)V

    throw v0
.end method
