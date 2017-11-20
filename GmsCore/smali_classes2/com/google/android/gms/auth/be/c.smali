.class Lcom/google/android/gms/auth/be/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/auth/be/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    sget-object v0, Lcom/google/android/gms/auth/b/a;->b:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/create"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/auth/be/c;->c:Ljava/lang/String;

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/ratepw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/auth/be/c;->e:Ljava/lang/String;

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/checkavail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/be/c;->d:Ljava/lang/String;

    .line 237
    const-string v0, "GLSUser"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/be/c;->f:Z

    .line 238
    iget-boolean v0, p0, Lcom/google/android/gms/auth/be/c;->f:Z

    if-eqz v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gms/auth/be/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Using [mCreateUri: %s, mRatePasswordUri: %s, mCheckAvailUri: %s]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    const-string v1, "GLSUser"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/auth/be/c;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gms/auth/be/c;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/google/android/gms/auth/be/c;->d:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/auth/be/c;->b:Landroid/content/Context;

    .line 249
    return-void
.end method

.method private static a(Lorg/json/JSONObject;)Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 650
    sget-object v0, Lcom/google/android/gms/auth/be/d;->i:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 652
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 653
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 655
    :goto_0
    sget-object v2, Lcom/google/android/gms/auth/be/d;->j:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v2

    .line 656
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 658
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 662
    :cond_0
    sget-object v2, Lcom/google/android/gms/auth/be/d;->k:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 663
    sget-object v2, Lcom/google/android/gms/auth/be/d;->k:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 664
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 668
    :goto_1
    if-nez v0, :cond_1

    .line 681
    :goto_2
    return-object v1

    .line 674
    :cond_1
    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 675
    array-length v3, v0

    invoke-static {v0, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 677
    if-nez v0, :cond_2

    .line 678
    const-string v0, "GLSUser"

    const-string v2, "Failed to read bitmap"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 681
    :cond_2
    new-instance v1, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;

    sget-object v3, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;-><init>(Lcom/google/android/gms/auth/firstparty/shared/k;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_3
    move-object v2, v1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Ljava/util/concurrent/atomic/AtomicBoolean;)Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 571
    :try_start_0
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    .line 572
    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v4

    .line 574
    sget-object v0, Lcom/google/android/gms/auth/be/d;->T:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 575
    invoke-virtual {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->b()Ljava/lang/String;

    move-result-object v0

    .line 576
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 577
    sget-object v3, Lcom/google/android/gms/auth/be/d;->p:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 579
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckRequest;->c()Ljava/lang/String;

    move-result-object v0

    .line 580
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 581
    sget-object v3, Lcom/google/android/gms/auth/be/d;->x:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 583
    :cond_1
    if-eqz p3, :cond_3

    .line 584
    invoke-virtual {p3}, Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;->a()Ljava/lang/String;

    move-result-object v0

    .line 585
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 586
    sget-object v3, Lcom/google/android/gms/auth/be/d;->k:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 588
    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;->b()Ljava/lang/String;

    move-result-object v0

    .line 589
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 590
    sget-object v3, Lcom/google/android/gms/auth/be/d;->h:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 593
    :cond_3
    invoke-virtual {v4}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move v3, v2

    move-object v0, v1

    .line 595
    :goto_0
    const/4 v5, 0x3

    if-ge v3, v5, :cond_8

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v5

    if-nez v5, :cond_8

    .line 597
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/auth/be/h;->a()Lcom/google/android/gms/auth/be/h;

    move-result-object v5

    .line 600
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v5, v6, p1}, Lcom/google/android/gms/auth/be/h;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 602
    iget-object v7, p0, Lcom/google/android/gms/auth/be/c;->d:Ljava/lang/String;

    const-string v8, "checkLoginName"

    invoke-virtual {v5, v7, v4, v8, v6}, Lcom/google/android/gms/auth/be/h;->a(Ljava/lang/String;Lorg/json/JSONStringer;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 604
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Req: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Res:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/auth/be/h;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v0

    .line 610
    :goto_1
    if-nez v3, :cond_4

    .line 611
    :try_start_2
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->m:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;-><init>(Lcom/google/android/gms/auth/firstparty/shared/k;)V

    .line 639
    :goto_2
    return-object v0

    .line 595
    :catch_0
    move-exception v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 613
    :cond_4
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 614
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 616
    sget-object v3, Lcom/google/android/gms/auth/be/d;->R:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 617
    sget-object v0, Lcom/google/android/gms/auth/be/d;->R:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 618
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 619
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 620
    :goto_3
    if-ge v2, v5, :cond_5

    .line 621
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    move-object v2, v0

    .line 627
    :goto_4
    invoke-static {v4}, Lcom/google/android/gms/auth/a/h;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v3

    .line 628
    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->I:Lcom/google/android/gms/auth/firstparty/shared/k;

    if-ne v3, v0, :cond_6

    sget-object v0, Lcom/google/android/gms/auth/be/d;->l:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 629
    sget-object v0, Lcom/google/android/gms/auth/be/d;->l:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 632
    :cond_6
    invoke-static {v4}, Lcom/google/android/gms/auth/be/c;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;

    move-result-object v4

    .line 633
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;-><init>(Lcom/google/android/gms/auth/firstparty/shared/k;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;Ljava/util/List;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 634
    :catch_1
    move-exception v0

    .line 635
    const-string v1, "GLSUser"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->B:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;-><init>(Lcom/google/android/gms/auth/firstparty/shared/k;)V

    goto :goto_2

    .line 637
    :catch_2
    move-exception v0

    .line 638
    const-string v1, "GLSUser"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->B:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/AccountNameCheckResponse;-><init>(Lcom/google/android/gms/auth/firstparty/shared/k;)V

    goto/16 :goto_2

    :cond_7
    move-object v2, v0

    goto :goto_4

    :cond_8
    move-object v3, v0

    goto/16 :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 299
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 300
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v1

    .line 301
    sget-object v2, Lcom/google/android/gms/auth/be/d;->T:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 302
    if-eqz p2, :cond_0

    .line 303
    sget-object v2, Lcom/google/android/gms/auth/be/d;->F:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 306
    :cond_0
    if-eqz p3, :cond_1

    .line 307
    sget-object v2, Lcom/google/android/gms/auth/be/d;->p:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2, p3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 310
    :cond_1
    if-eqz p4, :cond_2

    .line 311
    sget-object v2, Lcom/google/android/gms/auth/be/d;->x:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2, p4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 313
    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 314
    invoke-static {}, Lcom/google/android/gms/auth/be/h;->a()Lcom/google/android/gms/auth/be/h;

    move-result-object v2

    .line 317
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v2, v3, p5}, Lcom/google/android/gms/auth/be/h;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 319
    iget-object v4, p0, Lcom/google/android/gms/auth/be/c;->e:Ljava/lang/String;

    const-string v5, "ratePassword"

    invoke-virtual {v2, v4, v1, v5, v3}, Lcom/google/android/gms/auth/be/h;->a(Ljava/lang/String;Lorg/json/JSONStringer;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 324
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Req: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " Res:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/auth/be/h;->a(Ljava/lang/String;)V

    .line 325
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 326
    invoke-static {v2}, Lcom/google/android/gms/auth/a/h;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v3

    .line 329
    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    if-ne v1, v3, :cond_5

    .line 330
    sget-object v1, Lcom/google/android/gms/auth/be/d;->Q:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 332
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 334
    :goto_0
    sget-object v4, Lcom/google/android/gms/auth/be/d;->l:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v4}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v4

    .line 335
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 336
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    .line 339
    :goto_1
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;-><init>(Lcom/google/android/gms/auth/firstparty/shared/k;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 347
    :goto_2
    return-object v0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    const-string v1, "GLSUser"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :goto_3
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->B:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;-><init>(Lcom/google/android/gms/auth/firstparty/shared/k;)V

    goto :goto_2

    .line 342
    :catch_1
    move-exception v0

    .line 343
    const-string v1, "GLSUser"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 345
    :catch_2
    move-exception v0

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->m:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckResponse;-><init>(Lcom/google/android/gms/auth/firstparty/shared/k;)V

    goto :goto_2

    :cond_3
    move-object v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_0

    :cond_5
    move-object v1, v0

    move-object v2, v0

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 13

    .prologue
    .line 408
    new-instance v12, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    invoke-direct {v12}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;-><init>()V

    .line 409
    invoke-static {}, Lcom/google/android/gms/auth/be/h;->a()Lcom/google/android/gms/auth/be/h;

    move-result-object v3

    .line 411
    :try_start_0
    new-instance v2, Lorg/json/JSONStringer;

    invoke-direct {v2}, Lorg/json/JSONStringer;-><init>()V

    .line 412
    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v4

    .line 415
    sget-object v2, Lcom/google/android/gms/auth/be/d;->aA:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    int-to-long v6, v5

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    .line 416
    new-instance v2, Lcom/google/android/gms/auth/a/c;

    invoke-direct {v2, p1}, Lcom/google/android/gms/auth/a/c;-><init>(Landroid/content/Context;)V

    .line 417
    sget-object v5, Lcom/google/android/gms/auth/be/d;->aB:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v5}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v5

    iget v2, v2, Lcom/google/android/gms/auth/a/c;->d:I

    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    .line 420
    new-instance v2, Lcom/google/android/gms/common/b/a;

    iget-object v5, p0, Lcom/google/android/gms/auth/be/c;->b:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/google/android/gms/common/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/b/a;->a()Ljava/lang/String;

    move-result-object v2

    .line 421
    if-eqz v2, :cond_0

    .line 422
    sget-object v5, Lcom/google/android/gms/auth/be/d;->d:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v5}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 424
    :cond_0
    sget-object v2, Lcom/google/android/gms/auth/be/d;->T:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 425
    if-eqz p5, :cond_1

    .line 426
    sget-object v2, Lcom/google/android/gms/auth/be/d;->K:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 428
    :cond_1
    if-eqz p6, :cond_2

    .line 429
    sget-object v2, Lcom/google/android/gms/auth/be/d;->H:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 431
    :cond_2
    if-eqz p7, :cond_3

    .line 432
    sget-object v2, Lcom/google/android/gms/auth/be/d;->G:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 434
    :cond_3
    if-eqz p14, :cond_5

    .line 435
    invoke-virtual/range {p14 .. p14}, Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;->b()Ljava/lang/String;

    move-result-object v2

    .line 436
    if-eqz v2, :cond_4

    .line 437
    sget-object v5, Lcom/google/android/gms/auth/be/d;->h:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v5}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 439
    :cond_4
    invoke-virtual/range {p14 .. p14}, Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;->a()Ljava/lang/String;

    move-result-object v2

    .line 440
    if-eqz v2, :cond_5

    .line 441
    sget-object v5, Lcom/google/android/gms/auth/be/d;->k:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v5}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 445
    :cond_5
    sget-object v2, Lcom/google/android/gms/auth/be/d;->ar:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v5, "3"

    invoke-virtual {v2, v5}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 446
    if-eqz p8, :cond_6

    .line 447
    sget-object v2, Lcom/google/android/gms/auth/be/d;->p:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 449
    :cond_6
    if-eqz p9, :cond_7

    .line 450
    sget-object v2, Lcom/google/android/gms/auth/be/d;->x:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 452
    :cond_7
    if-eqz p3, :cond_8

    .line 453
    sget-object v2, Lcom/google/android/gms/auth/be/d;->F:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 460
    :cond_8
    if-eqz p10, :cond_9

    .line 461
    sget-object v2, Lcom/google/android/gms/auth/be/d;->Z:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    move/from16 v0, p10

    invoke-virtual {v2, v0}, Lorg/json/JSONStringer;->value(Z)Lorg/json/JSONStringer;

    .line 464
    :cond_9
    if-eqz p11, :cond_a

    .line 465
    sget-object v2, Lcom/google/android/gms/auth/be/d;->aa:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    move/from16 v0, p11

    invoke-virtual {v2, v0}, Lorg/json/JSONStringer;->value(Z)Lorg/json/JSONStringer;

    .line 468
    :cond_a
    if-eqz p15, :cond_b

    .line 469
    sget-object v2, Lcom/google/android/gms/auth/be/d;->aC:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    move-object/from16 v0, p15

    invoke-virtual {v2, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 471
    :cond_b
    sget-object v2, Lcom/google/android/gms/auth/be/d;->aA:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    int-to-long v6, v5

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    .line 472
    sget-object v2, Lcom/google/android/gms/auth/be/d;->aB:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    new-instance v5, Lcom/google/android/gms/auth/a/c;

    invoke-direct {v5, p1}, Lcom/google/android/gms/auth/a/c;-><init>(Landroid/content/Context;)V

    iget v5, v5, Lcom/google/android/gms/auth/a/c;->d:I

    int-to-long v6, v5

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    .line 476
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 477
    const-string v5, "GLSUser"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Creating account with locale \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    sget-object v5, Lcom/google/android/gms/auth/be/d;->z:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v5}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 479
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    sget-object v5, Lcom/google/android/gms/auth/be/d;->D:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v5}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v5

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/auth/be/d;->O:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v6}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v5

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 481
    invoke-virtual {v4}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 484
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, p13

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/auth/be/h;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 486
    new-instance v5, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/google/android/gms/auth/be/c;->c:Ljava/lang/String;

    const-string v7, "createAccount"

    invoke-virtual {v3, v6, v4, v7, v2}, Lcom/google/android/gms/auth/be/h;->a(Ljava/lang/String;Lorg/json/JSONStringer;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 495
    invoke-static {v5}, Lcom/google/android/gms/auth/a/h;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v2

    .line 501
    sget-object v3, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    if-eq v3, v2, :cond_c

    sget-object v3, Lcom/google/android/gms/auth/firstparty/shared/k;->A:Lcom/google/android/gms/auth/firstparty/shared/k;

    if-ne v3, v2, :cond_d

    .line 505
    :cond_c
    const-string v2, "services"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 506
    new-instance v2, Lcom/google/android/gms/auth/be/g;

    iget-object v3, p0, Lcom/google/android/gms/auth/be/c;->b:Landroid/content/Context;

    invoke-direct {v2, v3, p2}, Lcom/google/android/gms/auth/be/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 510
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/google/android/gms/auth/be/g;->b(Ljava/lang/String;)V

    .line 511
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p2

    move/from16 v4, p4

    move/from16 v6, p12

    move-object/from16 v10, p14

    move-object/from16 v11, p15

    invoke-virtual/range {v2 .. v11}, Lcom/google/android/gms/auth/be/g;->a(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v2

    .line 541
    :goto_0
    return-object v2

    .line 521
    :cond_d
    sget-object v3, Lcom/google/android/gms/auth/firstparty/shared/k;->l:Lcom/google/android/gms/auth/firstparty/shared/k;

    if-ne v3, v2, :cond_f

    .line 522
    invoke-static {v5}, Lcom/google/android/gms/auth/be/c;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;

    move-result-object v3

    .line 523
    invoke-virtual {v12, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a(Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    .line 533
    :cond_e
    :goto_1
    invoke-virtual {v12, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v2

    goto :goto_0

    .line 524
    :cond_f
    sget-object v3, Lcom/google/android/gms/auth/firstparty/shared/k;->B:Lcom/google/android/gms/auth/firstparty/shared/k;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    if-ne v3, v2, :cond_e

    .line 526
    :try_start_1
    sget-object v3, Lcom/google/android/gms/auth/be/d;->l:Lcom/google/android/gms/auth/be/d;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/be/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 528
    invoke-virtual {v12, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->d(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_1

    .line 534
    :catch_1
    move-exception v2

    .line 535
    const-string v3, "GLSUser"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :goto_2
    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/k;->B:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v12, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v2

    goto :goto_0

    .line 536
    :catch_2
    move-exception v2

    .line 537
    const-string v3, "GLSUser"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 539
    :catch_3
    move-exception v2

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/k;->m:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v12, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v2

    goto :goto_0
.end method
