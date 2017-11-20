.class public Lcom/google/android/gms/auth/login/e;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/ArrayList;

.field private static final c:Ljava/util/Map;


# instance fields
.field private aj:Ljava/util/ArrayList;

.field private ak:Ljava/util/ArrayList;

.field private al:Landroid/widget/TextView;

.field private am:Landroid/widget/TextView;

.field private an:Lcom/google/android/gms/auth/login/g;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/google/android/gms/common/acl/ScopeData;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const v6, 0x7f020067

    const v5, 0x7f020066

    const v4, 0x7f020065

    const v3, 0x7f0201a7

    .line 80
    const-string v0, "<placeholder\\s*id=[\'\"]app_name[\'\"]\\s*/?>(.*</placeholder>)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/login/e;->a:Ljava/util/regex/Pattern;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/login/e;->b:Ljava/util/ArrayList;

    .line 93
    invoke-static {}, Lcom/google/c/c/be;->e()Lcom/google/c/c/bf;

    move-result-object v0

    const-string v1, "https://www.googleapis.com/auth/plus.me"

    const v2, 0x7f020198

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    const-string v1, "https://www.googleapis.com/auth/plus.circles.read"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    const-string v1, "https://www.googleapis.com/auth/plus.circles.write"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    const-string v1, "https://www.googleapis.com/auth/plus.stream.read"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    const-string v1, "https://www.googleapis.com/auth/plus.stream.write"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    const-string v1, "https://www.googleapis.com/auth/plus.media.upload"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    const-string v1, "https://www.googleapis.com/auth/userinfo.email"

    const v2, 0x7f0201a6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    const-string v1, "https://www.googleapis.com/auth/youtube"

    const v2, 0x7f0201b3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    const-string v1, "https://www.googleapis.com/auth/games"

    const v2, 0x7f0201ac

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    const-string v1, "https://www.googleapis.com/auth/payments.make_payments"

    const v2, 0x7f0201b4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    const-string v1, "https://www.googleapis.com/auth/fitness.activity.read"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    const-string v1, "https://www.googleapis.com/auth/fitness.activity.write"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    const-string v1, "https://www.googleapis.com/auth/fitness.location.read"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    const-string v1, "https://www.googleapis.com/auth/fitness.location.write"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    const-string v1, "https://www.googleapis.com/auth/fitness.body.read"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    const-string v1, "https://www.googleapis.com/auth/fitness.body.write"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/bf;->a()Lcom/google/c/c/be;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/login/e;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 545
    return-void
.end method

.method private W()Ljava/util/ArrayList;
    .locals 5

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    invoke-virtual {v0}, Lcom/google/android/gms/common/acl/ScopeData;->e()Ljava/lang/String;

    move-result-object v1

    .line 413
    if-nez v1, :cond_0

    .line 414
    const/4 v0, 0x0

    .line 430
    :goto_0
    return-object v0

    .line 417
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/common/util/g;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/people/data/c;->a([B)Ljava/util/List;

    move-result-object v2

    .line 420
    if-eqz v2, :cond_1

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 423
    :catch_0
    move-exception v0

    .line 424
    const-string v2, "AuthScopeFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to parse audience from roster: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 426
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 427
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/e;->k()Landroid/content/res/Resources;

    move-result-object v1

    .line 428
    const-string v2, "myCircles"

    const v3, 0x7f1001e6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/common/people/data/AudienceMember;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/people/data/AudienceMember;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/acl/ScopeData;I)Lcom/google/android/gms/auth/login/e;
    .locals 2

    .prologue
    .line 180
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 181
    const-string v1, "scope_index"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 182
    const-string v1, "app_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v1, "account_name"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v1, "calling_package"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v1, "scope_data"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 186
    const-string v1, "title_logo"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 187
    new-instance v1, Lcom/google/android/gms/auth/login/e;

    invoke-direct {v1}, Lcom/google/android/gms/auth/login/e;-><init>()V

    .line 188
    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/login/e;->e(Landroid/os/Bundle;)V

    .line 189
    return-object v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 665
    invoke-static {p0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    sget-object v0, Lcom/google/android/gms/auth/login/e;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 620
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 621
    :cond_0
    const v0, 0x7f1003b7

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/e;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 656
    :goto_0
    return-object v0

    :cond_1
    move v4, v5

    move-object v2, v1

    move-object v3, v1

    .line 628
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_3

    .line 629
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/people/data/AudienceMember;

    .line 630
    invoke-virtual {v0}, Lcom/google/android/gms/common/people/data/AudienceMember;->b()I

    move-result v6

    if-ne v6, v7, :cond_2

    .line 631
    invoke-virtual {v0}, Lcom/google/android/gms/common/people/data/AudienceMember;->c()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_2
    :pswitch_0
    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    .line 628
    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_1

    :pswitch_1
    move-object v8, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v8

    .line 634
    goto :goto_2

    :pswitch_2
    move-object v2, v3

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 637
    goto :goto_2

    .line 639
    :pswitch_3
    invoke-virtual {v0}, Lcom/google/android/gms/common/people/data/AudienceMember;->i()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v1, v2

    move-object v2, v3

    .line 640
    goto :goto_2

    .line 647
    :cond_3
    if-eqz v3, :cond_4

    .line 648
    const v0, 0x7f1003b9

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/e;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 649
    :cond_4
    if-eqz v2, :cond_5

    .line 650
    const v0, 0x7f1003b5

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/e;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 651
    :cond_5
    if-eqz v1, :cond_6

    .line 652
    const v0, 0x7f1003ba

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/e;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 653
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v7, :cond_7

    .line 654
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/people/data/AudienceMember;

    invoke-virtual {v0}, Lcom/google/android/gms/common/people/data/AudienceMember;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 656
    :cond_7
    const v0, 0x7f1003b6

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/e;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 631
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/16 v10, 0x10

    .line 479
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 496
    :goto_0
    return-object v0

    .line 483
    :cond_1
    :try_start_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 484
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    move v4, v0

    .line 485
    :goto_1
    if-ge v4, v6, :cond_5

    .line 486
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/people/data/AudienceMember;

    invoke-virtual {v0}, Lcom/google/android/gms/common/people/data/AudienceMember;->d()Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v10, :cond_2

    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid input: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " exceeds 16 characters"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    const-string v2, "AuthScopeFragment"

    const-string v3, "Failed to convert audience to circle ID list"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 496
    goto :goto_0

    .line 487
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v10, :cond_4

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x10

    invoke-static {v0, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v8

    const/16 v0, 0x20

    shl-long/2addr v8, v0

    or-long/2addr v2, v8

    :goto_2
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 488
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    add-int/lit8 v0, v4, 0x1

    if-ge v0, v6, :cond_3

    .line 490
    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 485
    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 487
    :cond_4
    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    goto :goto_2

    .line 493
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6

    .prologue
    .line 507
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 527
    :goto_0
    return-object p2

    .line 511
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 512
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 513
    const/4 v1, 0x0

    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 514
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    .line 515
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/android/gms/common/people/data/AudienceMember;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/people/data/AudienceMember;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 517
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_2

    move-object p2, v0

    .line 518
    goto :goto_0

    .line 520
    :catch_0
    move-exception v0

    .line 521
    const-string v1, "AuthScopeFragment"

    const-string v2, "Failed to parse audience from circle ID list."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 525
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/acl/ScopeData;->a(Z)V

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;)V
    .locals 4

    .prologue
    .line 711
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/e;->f:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/common/analytics/d;->c:Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;

    iget-object v3, p0, Lcom/google/android/gms/auth/login/e;->g:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/android/gms/common/server/o;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;Ljava/lang/String;)V

    .line 715
    return-void
.end method

.method private a(Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;)V
    .locals 5

    .prologue
    .line 718
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/e;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/auth/login/e;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    const-string v0, "PlusAnalytics"

    const-string v1, "Package name for the given context is null. Unable to log given action."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :goto_0
    return-void

    .line 718
    :cond_1
    new-instance v3, Lcom/google/android/gms/common/server/p;

    invoke-direct {v3, v0}, Lcom/google/android/gms/common/server/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/google/android/gms/common/server/p;->b(Ljava/lang/String;)Lcom/google/android/gms/common/server/p;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/server/p;->a(Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;)Lcom/google/android/gms/common/server/p;

    move-result-object v1

    iget-object v3, v1, Lcom/google/android/gms/common/server/p;->a:Landroid/content/Intent;

    const-string v4, "endView"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/server/p;->a(Ljava/lang/String;)Lcom/google/android/gms/common/server/p;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/server/o;->a(Landroid/content/Context;Lcom/google/android/gms/common/server/p;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/e;->k()Landroid/content/res/Resources;

    move-result-object v0

    .line 397
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const v2, 0x7f0a00ea

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 399
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 401
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 402
    const/4 v3, 0x0

    const/16 v4, 0x12

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 403
    iget-object v1, p0, Lcom/google/android/gms/auth/login/e;->am:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    return-void
.end method

.method private b(Ljava/util/List;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 565
    const/4 v1, 0x0

    .line 567
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    invoke-virtual {v0}, Lcom/google/android/gms/common/acl/ScopeData;->e()Ljava/lang/String;

    move-result-object v0

    .line 568
    if-eqz v0, :cond_4

    .line 569
    invoke-static {v0}, Lcom/google/android/gms/common/util/g;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/people/a/c;->a([B)Lcom/google/android/gms/common/people/a/c;

    move-result-object v3

    .line 572
    invoke-virtual {v3}, Lcom/google/android/gms/common/people/a/c;->c()I

    move-result v4

    .line 574
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_4

    .line 575
    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/people/a/c;->a(I)Lcom/google/android/gms/common/people/a/d;

    move-result-object v0

    .line 577
    iget-boolean v5, v0, Lcom/google/android/gms/common/people/a/d;->a:Z

    if-eqz v5, :cond_2

    .line 578
    iget-object v0, v0, Lcom/google/android/gms/common/people/a/d;->b:Lcom/google/android/gms/common/people/a/f;

    invoke-virtual {v0}, Lcom/google/android/gms/common/people/a/f;->g()[B

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/common/people/a/f;

    invoke-direct {v5}, Lcom/google/android/gms/common/people/a/f;-><init>()V

    array-length v6, v0

    invoke-virtual {v5, v0, v6}, Lcom/google/protobuf/a/f;->a([BI)Lcom/google/protobuf/a/f;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/people/a/f;
    :try_end_0
    .catch Lcom/google/protobuf/a/e; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    if-eqz v0, :cond_3

    .line 583
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/people/a/f;->a:Ljava/util/List;
    :try_end_1
    .catch Lcom/google/protobuf/a/e; {:try_start_1 .. :try_end_1} :catch_1

    .line 595
    :goto_1
    if-nez v0, :cond_0

    .line 596
    new-instance v0, Lcom/google/android/gms/common/people/a/f;

    invoke-direct {v0}, Lcom/google/android/gms/common/people/a/f;-><init>()V

    .line 600
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 601
    invoke-static {v0, p1}, Lcom/google/android/gms/common/people/data/c;->a(Lcom/google/android/gms/common/people/a/f;Ljava/util/List;)V

    .line 603
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/common/people/a/f;->g()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/g;->c([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    move-object v0, v1

    .line 574
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 594
    goto :goto_1

    .line 589
    :catch_0
    move-exception v0

    .line 590
    :goto_2
    const-string v2, "AuthScopeFragment"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 591
    const-string v2, "AuthScopeFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to get SharingRoster from RenderedSharingRoster: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/protobuf/a/e;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v0, v1

    goto :goto_1

    .line 589
    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2
.end method


# virtual methods
.method public final P()Z
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    invoke-virtual {v0}, Lcom/google/android/gms/common/acl/ScopeData;->p()Z

    move-result v0

    goto :goto_0
.end method

.method public final Q()Z
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    invoke-virtual {v0}, Lcom/google/android/gms/common/acl/ScopeData;->q()Z

    move-result v0

    goto :goto_0
.end method

.method public final R()Z
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->ak:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final S()Z
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    invoke-virtual {v0}, Lcom/google/android/gms/common/acl/ScopeData;->f()Z

    move-result v0

    goto :goto_0
.end method

.method public final T()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->ak:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->ak:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 680
    :cond_0
    const/4 v0, 0x0

    .line 682
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->ak:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public final U()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->aj:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final V()Ljava/lang/String;
    .locals 3

    .prologue
    .line 690
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 691
    iget v1, p0, Lcom/google/android/gms/auth/login/e;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 692
    const-class v1, Lcom/google/android/gms/auth/login/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 693
    iget-object v1, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    invoke-virtual {v1}, Lcom/google/android/gms/common/acl/ScopeData;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 694
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/e;->R()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 695
    const-string v1, "\n   SharingRoster: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 696
    iget-object v1, p0, Lcom/google/android/gms/auth/login/e;->ak:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 697
    const-string v1, "No one"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 702
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/e;->S()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 703
    const-string v1, "\n   Visible edges: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/auth/login/e;->aj:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 704
    const-string v1, "\n   All circles: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/e;->P()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 705
    const-string v1, "\n   All contacts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/e;->Q()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 707
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 699
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/auth/login/e;->ak:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const v7, 0x7f0d0180

    const v6, 0x7f0d0090

    const v5, 0x7f0d008b

    const/4 v4, 0x0

    .line 231
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 232
    const v0, 0x7f030099

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 233
    const v0, 0x7f0d017f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/e;->al:Landroid/widget/TextView;

    const v0, 0x7f0d0181

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/e;->am:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->al:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    invoke-virtual {v1}, Lcom/google/android/gms/common/acl/ScopeData;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d017e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/e;->k()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    invoke-virtual {v0}, Lcom/google/android/gms/common/acl/ScopeData;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02007f

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->am:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->ak:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/auth/login/e;->W()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/e;->ak:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->ak:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/e;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/e;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/auth/login/e;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    invoke-virtual {v1}, Lcom/google/android/gms/common/acl/ScopeData;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Lcom/google/android/gms/auth/login/e;->c:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    invoke-virtual {v4}, Lcom/google/android/gms/common/acl/ScopeData;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    :cond_2
    return-object v2

    .line 233
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    invoke-virtual {v0}, Lcom/google/android/gms/common/acl/ScopeData;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020199

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->aj:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    invoke-virtual {v0}, Lcom/google/android/gms/common/acl/ScopeData;->g()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/auth/login/e;->b:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/auth/login/e;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/e;->aj:Ljava/util/ArrayList;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    invoke-virtual {v0}, Lcom/google/android/gms/common/acl/ScopeData;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    invoke-virtual {v0}, Lcom/google/android/gms/common/acl/ScopeData;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    invoke-virtual {v1}, Lcom/google/android/gms/common/acl/ScopeData;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    invoke-virtual {v0}, Lcom/google/android/gms/common/acl/ScopeData;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    invoke-virtual {v1}, Lcom/google/android/gms/common/acl/ScopeData;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->ak:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->ak:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    :cond_0
    const-string v0, ""

    .line 442
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->ak:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/e;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, -0x1

    .line 349
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 353
    if-eqz p3, :cond_0

    .line 354
    const-string v0, "pacl_audience"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/people/data/Audience;

    .line 356
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/gms/common/people/data/Audience;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/google/android/gms/auth/login/e;->ak:Ljava/util/ArrayList;

    .line 357
    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->ak:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/e;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/e;->a(Ljava/lang/String;)V

    .line 360
    if-ne p2, v2, :cond_1

    .line 361
    sget-object v0, Lcom/google/android/gms/common/analytics/h;->h:Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/e;->a(Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;)V

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    if-nez p2, :cond_0

    .line 363
    sget-object v0, Lcom/google/android/gms/common/analytics/h;->g:Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/e;->a(Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;)V

    goto :goto_0

    .line 366
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 367
    if-ne p2, v2, :cond_3

    .line 368
    new-instance v0, Lcom/google/android/gms/common/audience/a/d;

    invoke-direct {v0, p3}, Lcom/google/android/gms/common/audience/a/d;-><init>(Landroid/content/Intent;)V

    .line 369
    invoke-interface {v0}, Lcom/google/android/gms/common/audience/a/g;->b()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/auth/login/e;->aj:Ljava/util/ArrayList;

    .line 370
    iget-object v1, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    invoke-interface {v0}, Lcom/google/android/gms/common/audience/a/g;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/acl/ScopeData;->a(Z)V

    .line 371
    iget-object v1, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    invoke-interface {v0}, Lcom/google/android/gms/common/audience/a/g;->d()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/acl/ScopeData;->b(Z)V

    .line 372
    sget-object v0, Lcom/google/android/gms/common/analytics/c;->g:Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/e;->a(Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;)V

    goto :goto_0

    .line 373
    :cond_3
    if-nez p2, :cond_0

    .line 374
    sget-object v0, Lcom/google/android/gms/common/analytics/c;->h:Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/e;->a(Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;)V

    goto :goto_0

    .line 376
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 377
    if-ne p2, v2, :cond_0

    .line 378
    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->an:Lcom/google/android/gms/auth/login/g;

    const-string v1, "detail_end_time"

    invoke-virtual {p3, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v1, "detail_start_time"

    invoke-virtual {p3, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/auth/login/g;->a(J)V

    .line 380
    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->an:Lcom/google/android/gms/auth/login/g;

    const-string v1, "detail_screen_scrollable"

    invoke-virtual {p3, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "scroll_screen_end"

    invoke-virtual {p3, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/auth/login/g;->a(ZZ)V

    goto :goto_0

    .line 386
    :cond_5
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->a(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 199
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;)V

    .line 200
    instance-of v1, p1, Lcom/google/android/gms/auth/login/f;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/aj;->a(Z)V

    .line 202
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/auth/login/g;

    move-object v1, v0

    iput-object v1, p0, Lcom/google/android/gms/auth/login/e;->an:Lcom/google/android/gms/auth/login/g;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    return-void

    .line 204
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement OnScopeDetailsSelectedListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    .line 214
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->r:Landroid/os/Bundle;

    .line 215
    const-string v0, "app_name"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/e;->e:Ljava/lang/String;

    .line 216
    const-string v0, "account_name"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/e;->f:Ljava/lang/String;

    .line 217
    const-string v0, "scope_index"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/auth/login/e;->d:I

    .line 218
    const-string v0, "calling_package"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/e;->g:Ljava/lang/String;

    .line 219
    if-eqz p1, :cond_0

    .line 220
    const-string v0, "facl_audience"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/e;->aj:Ljava/util/ArrayList;

    .line 221
    const-string v0, "pacl_audience"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/e;->ak:Ljava/util/ArrayList;

    .line 222
    const-string v0, "scope_data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/acl/ScopeData;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    .line 226
    :goto_0
    const-string v0, "title_logo"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/auth/login/e;->i:I

    .line 227
    return-void

    .line 224
    :cond_0
    const-string v0, "scope_data"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/acl/ScopeData;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->aj:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/android/gms/auth/login/e;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 290
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    .line 291
    const-string v0, "app_name"

    iget-object v1, p0, Lcom/google/android/gms/auth/login/e;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v0, "account_name"

    iget-object v1, p0, Lcom/google/android/gms/auth/login/e;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v0, "scope_data"

    iget-object v1, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 294
    const-string v0, "pacl_audience"

    iget-object v1, p0, Lcom/google/android/gms/auth/login/e;->ak:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 295
    const-string v0, "facl_audience"

    iget-object v1, p0, Lcom/google/android/gms/auth/login/e;->aj:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 296
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    invoke-virtual {v0}, Lcom/google/android/gms/common/acl/ScopeData;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    invoke-virtual {v0}, Lcom/google/android/gms/common/acl/ScopeData;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/login/e;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/login/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/login/e;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/auth/login/e;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    new-instance v4, Lcom/google/android/gms/common/people/data/a;

    invoke-direct {v4}, Lcom/google/android/gms/common/people/data/a;-><init>()V

    iget-object v5, p0, Lcom/google/android/gms/auth/login/e;->ak:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/people/data/a;->a(Ljava/util/Collection;)Lcom/google/android/gms/common/people/data/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/common/people/data/a;->a()Lcom/google/android/gms/common/people/data/Audience;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/auth/login/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/acl/ScopeData;Lcom/google/android/gms/common/people/data/Audience;)Landroid/content/Intent;

    move-result-object v0

    .line 316
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/login/e;->a(Landroid/content/Intent;I)V

    .line 317
    sget-object v0, Lcom/google/android/gms/common/analytics/d;->c:Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;

    sget-object v1, Lcom/google/android/gms/common/analytics/d;->r:Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/auth/login/e;->a(Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;)V

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    invoke-virtual {v0}, Lcom/google/android/gms/common/acl/ScopeData;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 321
    new-instance v0, Lcom/google/android/gms/common/audience/a/d;

    const-string v1, "com.google.android.gms.common.acl.CHOOSE_FACL"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/audience/a/d;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/auth/login/e;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/audience/a/f;->g(Ljava/lang/String;)Lcom/google/android/gms/common/audience/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/login/e;->aj:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/audience/a/f;->b(Ljava/util/List;)Lcom/google/android/gms/common/audience/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    invoke-virtual {v1}, Lcom/google/android/gms/common/acl/ScopeData;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/auth/login/e;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/auth/login/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/audience/a/f;->e(Ljava/lang/String;)Lcom/google/android/gms/common/audience/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    invoke-virtual {v1}, Lcom/google/android/gms/common/acl/ScopeData;->k()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/audience/a/f;->e(Z)Lcom/google/android/gms/common/audience/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    invoke-virtual {v1}, Lcom/google/android/gms/common/acl/ScopeData;->m()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/audience/a/f;->d(Z)Lcom/google/android/gms/common/audience/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    invoke-virtual {v1}, Lcom/google/android/gms/common/acl/ScopeData;->o()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/audience/a/f;->c(Z)Lcom/google/android/gms/common/audience/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    invoke-virtual {v1}, Lcom/google/android/gms/common/acl/ScopeData;->p()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/audience/a/f;->b(Z)Lcom/google/android/gms/common/audience/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    invoke-virtual {v1}, Lcom/google/android/gms/common/acl/ScopeData;->q()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/audience/a/f;->a(Z)Lcom/google/android/gms/common/audience/a/f;

    move-result-object v1

    iget v0, p0, Lcom/google/android/gms/auth/login/e;->i:I

    if-nez v0, :cond_2

    const-string v0, "GOOGLE"

    :goto_1
    invoke-interface {v1, v0}, Lcom/google/android/gms/common/audience/a/f;->f(Ljava/lang/String;)Lcom/google/android/gms/common/audience/a/f;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/common/analytics/a;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/audience/a/f;->d(Ljava/lang/String;)Lcom/google/android/gms/common/audience/a/d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/common/audience/a/d;->a:Landroid/content/Intent;

    .line 333
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-virtual {v1}, Landroid/support/v4/app/j;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 334
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/login/e;->a(Landroid/content/Intent;I)V

    .line 335
    sget-object v0, Lcom/google/android/gms/common/analytics/c;->d:Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/e;->a(Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;)V

    .line 336
    sget-object v0, Lcom/google/android/gms/common/analytics/d;->c:Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;

    sget-object v1, Lcom/google/android/gms/common/analytics/d;->d:Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/auth/login/e;->a(Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;)V

    goto/16 :goto_0

    .line 321
    :cond_2
    const-string v0, "GOOGLE_PLUS"

    goto :goto_1

    .line 341
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/auth/login/e;->h:Lcom/google/android/gms/common/acl/ScopeData;

    invoke-virtual {v0}, Lcom/google/android/gms/common/acl/ScopeData;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    check-cast v0, Lcom/google/android/gms/auth/login/f;

    invoke-interface {v0}, Lcom/google/android/gms/auth/login/f;->b()Z

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/auth/login/e;->g:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/auth/login/d;->a(Ljava/lang/String;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 343
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/login/e;->a(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method
