.class final Lcom/google/android/location/reporting/config/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/SharedPreferences;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/location/reporting/config/e;

.field private final d:Lcom/google/android/location/o/a;

.field private final e:Lcom/google/android/gms/common/util/i;

.field private final f:Lcom/google/android/location/reporting/service/d;

.field private final g:Lcom/google/android/location/reporting/b/f;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/google/android/location/reporting/config/e;Lcom/google/android/location/o/a;Lcom/google/android/gms/common/util/i;Lcom/google/android/location/reporting/service/d;Lcom/google/android/location/reporting/b/f;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/google/android/location/reporting/config/p;->b:Landroid/content/Context;

    .line 154
    iput-object p4, p0, Lcom/google/android/location/reporting/config/p;->d:Lcom/google/android/location/o/a;

    .line 155
    iput-object p3, p0, Lcom/google/android/location/reporting/config/p;->c:Lcom/google/android/location/reporting/config/e;

    .line 156
    iput-object p7, p0, Lcom/google/android/location/reporting/config/p;->g:Lcom/google/android/location/reporting/b/f;

    .line 157
    iput-object p2, p0, Lcom/google/android/location/reporting/config/p;->a:Landroid/content/SharedPreferences;

    .line 158
    iput-object p5, p0, Lcom/google/android/location/reporting/config/p;->e:Lcom/google/android/gms/common/util/i;

    .line 159
    iput-object p6, p0, Lcom/google/android/location/reporting/config/p;->f:Lcom/google/android/location/reporting/service/d;

    .line 160
    return-void
.end method

.method static a(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 219
    const-string v0, "null account"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ambiguous_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/google/android/location/reporting/config/AccountConfig;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for account "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/location/reporting/config/AccountConfig;->b()Landroid/accounts/Account;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 707
    const-string v1, "GCoreUlr"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 708
    return-void
.end method

.method private a(ZZ)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 662
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/location/reporting/config/p;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 663
    const-string v0, "GCoreUlr"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Changing settings when ULR ineligible"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/reporting/config/p;->d:Lcom/google/android/location/o/a;

    invoke-interface {v0}, Lcom/google/android/location/o/a;->a()[Landroid/accounts/Account;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_6

    aget-object v4, v2, v0

    .line 666
    invoke-virtual {p0, v4, v1}, Lcom/google/android/location/reporting/config/p;->a(Landroid/accounts/Account;I)Lcom/google/android/location/reporting/config/AccountConfig;

    move-result-object v5

    .line 667
    invoke-direct {p0, v4}, Lcom/google/android/location/reporting/config/p;->k(Landroid/accounts/Account;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0, v4}, Lcom/google/android/location/reporting/config/p;->m(Landroid/accounts/Account;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0, v4}, Lcom/google/android/location/reporting/config/p;->n(Landroid/accounts/Account;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 668
    if-eqz p2, :cond_4

    .line 670
    invoke-static {v4}, Lcom/google/android/location/reporting/config/i;->a(Landroid/accounts/Account;)Lcom/google/android/location/reporting/config/j;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/location/reporting/config/AccountConfig;->d()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/google/android/location/reporting/config/j;->a(J)Lcom/google/android/location/reporting/config/j;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/google/android/location/reporting/config/j;->a(Z)Lcom/google/android/location/reporting/config/j;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/location/reporting/config/j;->a()Lcom/google/android/location/reporting/config/i;

    move-result-object v6

    .line 673
    const-string v7, "may-update-ambiguous"

    const-string v8, "disambiguation_update"

    invoke-virtual {p0, v7, v6, v8}, Lcom/google/android/location/reporting/config/p;->a(Ljava/lang/String;Lcom/google/android/location/reporting/config/i;Ljava/lang/String;)Z

    .line 689
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/location/reporting/config/p;->a()Z

    move-result v6

    if-nez v6, :cond_5

    .line 690
    invoke-direct {p0, v4}, Lcom/google/android/location/reporting/config/p;->m(Landroid/accounts/Account;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-direct {p0, v4}, Lcom/google/android/location/reporting/config/p;->n(Landroid/accounts/Account;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-direct {p0, v4}, Lcom/google/android/location/reporting/config/p;->k(Landroid/accounts/Account;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 694
    :cond_2
    const-string v4, "Settings undefined but have non-default settings"

    invoke-static {v5, v4}, Lcom/google/android/location/reporting/config/p;->a(Lcom/google/android/location/reporting/config/AccountConfig;Ljava/lang/String;)V

    .line 665
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 680
    :cond_4
    invoke-static {v4}, Lcom/google/android/location/reporting/config/i;->a(Landroid/accounts/Account;)Lcom/google/android/location/reporting/config/j;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/google/android/location/reporting/config/j;->b(Z)Lcom/google/android/location/reporting/config/j;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/location/reporting/config/AccountConfig;->d()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/google/android/location/reporting/config/j;->a(J)Lcom/google/android/location/reporting/config/j;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/location/reporting/config/j;->i:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/location/reporting/config/j;->j:Ljava/lang/Boolean;

    invoke-virtual {v6, v10}, Lcom/google/android/location/reporting/config/j;->b(Z)Lcom/google/android/location/reporting/config/j;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/location/reporting/config/j;->a()Lcom/google/android/location/reporting/config/i;

    move-result-object v6

    .line 683
    const-string v7, "preserve-ambiguous"

    const-string v8, "preserve_ambiguous_update"

    invoke-virtual {p0, v7, v6, v8}, Lcom/google/android/location/reporting/config/p;->a(Ljava/lang/String;Lcom/google/android/location/reporting/config/i;Ljava/lang/String;)Z

    .line 685
    const-string v6, "When ambiguous, at least one of reporting or history must be false"

    invoke-static {v5, v6}, Lcom/google/android/location/reporting/config/p;->a(Lcom/google/android/location/reporting/config/AccountConfig;Ljava/lang/String;)V

    goto :goto_1

    .line 697
    :cond_5
    invoke-direct {p0, v4}, Lcom/google/android/location/reporting/config/p;->l(Landroid/accounts/Account;)J

    goto :goto_2

    .line 702
    :cond_6
    return-void
.end method

.method static b(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    const-string v0, "null account"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dirty_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()Lcom/google/android/location/reporting/config/ReportingConfig;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 563
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 564
    iget-object v0, p0, Lcom/google/android/location/reporting/config/p;->d:Lcom/google/android/location/o/a;

    invoke-interface {v0}, Lcom/google/android/location/o/a;->a()[Landroid/accounts/Account;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 565
    invoke-virtual {p0, v5, v1}, Lcom/google/android/location/reporting/config/p;->a(Landroid/accounts/Account;I)Lcom/google/android/location/reporting/config/AccountConfig;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/reporting/config/p;->c:Lcom/google/android/location/reporting/config/e;

    invoke-interface {v0}, Lcom/google/android/location/reporting/config/e;->a()Lcom/google/android/location/reporting/config/Conditions;

    move-result-object v0

    .line 568
    new-instance v1, Lcom/google/android/location/reporting/config/ReportingConfig;

    invoke-virtual {p0}, Lcom/google/android/location/reporting/config/p;->a()Z

    move-result v3

    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/location/reporting/config/ReportingConfig;-><init>(ZLjava/util/List;Lcom/google/android/location/reporting/config/Conditions;)V

    return-object v1
.end method

.method static c(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 265
    const-string v0, "null account"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "serverMillis_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static d(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 280
    const-string v0, "null account"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clientMillis_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static e(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 298
    const-string v0, "null account"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "restriction_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static f(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 315
    const-string v0, "null account"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "authorized_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static g(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 335
    const-string v0, "null account"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reportingEnabled_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static h(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 349
    const-string v0, "null account"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "historyEnabled_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static i(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "termsAccepted_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j(Landroid/accounts/Account;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 230
    iget-object v1, p0, Lcom/google/android/location/reporting/config/p;->d:Lcom/google/android/location/o/a;

    invoke-interface {v1}, Lcom/google/android/location/o/a;->a()[Landroid/accounts/Account;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 231
    invoke-virtual {v4, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 232
    const/4 v0, 0x1

    .line 235
    :cond_0
    return v0

    .line 230
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private k(Landroid/accounts/Account;)Z
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/location/reporting/config/p;->a:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/google/android/location/reporting/config/p;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private l(Landroid/accounts/Account;)J
    .locals 4

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/android/location/reporting/config/p;->a:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/google/android/location/reporting/config/p;->d(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    const-wide/high16 v2, -0x8000000000000000L

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private m(Landroid/accounts/Account;)Z
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/android/location/reporting/config/p;->a:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/google/android/location/reporting/config/p;->g(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private n(Landroid/accounts/Account;)Z
    .locals 3

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/android/location/reporting/config/p;->a:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/google/android/location/reporting/config/p;->h(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Landroid/accounts/Account;I)Lcom/google/android/location/reporting/config/AccountConfig;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 535
    iget-object v0, p0, Lcom/google/android/location/reporting/config/p;->a:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/google/android/location/reporting/config/p;->g(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    .line 536
    iget-object v3, p0, Lcom/google/android/location/reporting/config/p;->a:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/google/android/location/reporting/config/p;->h(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    .line 537
    invoke-static {p1}, Lcom/google/android/location/reporting/config/AccountConfig;->a(Landroid/accounts/Account;)Lcom/google/android/location/reporting/config/a;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/location/reporting/config/p;->a()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/location/reporting/config/a;->c:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/google/android/location/reporting/config/p;->l(Landroid/accounts/Account;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/location/reporting/config/a;->b:Ljava/lang/Long;

    invoke-direct {p0, p1}, Lcom/google/android/location/reporting/config/p;->j(Landroid/accounts/Account;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/location/reporting/config/a;->d:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/google/android/location/reporting/config/p;->k(Landroid/accounts/Account;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/location/reporting/config/a;->e:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/google/android/location/reporting/config/p;->m(Landroid/accounts/Account;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/location/reporting/config/a;->j:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/google/android/location/reporting/config/p;->n(Landroid/accounts/Account;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/location/reporting/config/a;->k:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/location/reporting/config/a;->l:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/location/reporting/config/p;->a:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/google/android/location/reporting/config/p;->c(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v6, -0x8000000000000000L

    invoke-interface {v0, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/location/reporting/config/a;->h:Ljava/lang/Long;

    iget-object v0, p0, Lcom/google/android/location/reporting/config/p;->a:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/google/android/location/reporting/config/p;->e(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/location/reporting/config/a;->i:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/android/location/reporting/config/p;->a:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/google/android/location/reporting/config/p;->f(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/location/reporting/config/a;->g:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/location/reporting/config/p;->a:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/google/android/location/reporting/config/p;->b(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/location/reporting/config/a;->f:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/location/reporting/config/p;->c:Lcom/google/android/location/reporting/config/e;

    invoke-interface {v0}, Lcom/google/android/location/reporting/config/e;->a()Lcom/google/android/location/reporting/config/Conditions;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/location/reporting/config/a;->m:Lcom/google/android/location/reporting/config/Conditions;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/location/reporting/config/a;->n:Ljava/lang/Integer;

    new-instance v0, Lcom/google/android/location/reporting/config/AccountConfig;

    invoke-direct {v0, v4, v1}, Lcom/google/android/location/reporting/config/AccountConfig;-><init>(Lcom/google/android/location/reporting/config/a;B)V

    return-object v0

    :cond_1
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method final a(Landroid/content/SharedPreferences$Editor;Lcom/google/android/location/reporting/config/i;)V
    .locals 4

    .prologue
    .line 487
    iget-object v0, p2, Lcom/google/android/location/reporting/config/i;->a:Landroid/accounts/Account;

    .line 488
    iget-boolean v1, p2, Lcom/google/android/location/reporting/config/i;->g:Z

    if-nez v1, :cond_0

    .line 489
    invoke-static {v0}, Lcom/google/android/location/reporting/config/p;->d(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/reporting/config/p;->e:Lcom/google/android/gms/common/util/i;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/i;->a()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 491
    :cond_0
    iget-object v1, p2, Lcom/google/android/location/reporting/config/i;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 492
    const-string v1, "defined"

    iget-object v2, p2, Lcom/google/android/location/reporting/config/i;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 494
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/location/reporting/config/i;->a()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 495
    invoke-static {v0}, Lcom/google/android/location/reporting/config/p;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/location/reporting/config/i;->a()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 497
    :cond_2
    iget-object v1, p2, Lcom/google/android/location/reporting/config/i;->n:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 498
    invoke-static {v0}, Lcom/google/android/location/reporting/config/p;->b(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/location/reporting/config/i;->n:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 500
    :cond_3
    iget-object v1, p2, Lcom/google/android/location/reporting/config/i;->k:Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 501
    invoke-static {v0}, Lcom/google/android/location/reporting/config/p;->c(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/location/reporting/config/i;->k:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 503
    :cond_4
    iget-object v1, p2, Lcom/google/android/location/reporting/config/i;->l:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 504
    invoke-static {v0}, Lcom/google/android/location/reporting/config/p;->e(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/location/reporting/config/i;->l:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 506
    :cond_5
    iget-object v1, p2, Lcom/google/android/location/reporting/config/i;->m:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 507
    invoke-static {v0}, Lcom/google/android/location/reporting/config/p;->f(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/location/reporting/config/i;->m:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 509
    :cond_6
    iget-object v1, p2, Lcom/google/android/location/reporting/config/i;->i:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    .line 510
    invoke-static {v0}, Lcom/google/android/location/reporting/config/p;->g(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/location/reporting/config/i;->i:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 512
    :cond_7
    iget-object v1, p2, Lcom/google/android/location/reporting/config/i;->j:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    .line 513
    invoke-static {v0}, Lcom/google/android/location/reporting/config/p;->h(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/location/reporting/config/i;->j:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 515
    :cond_8
    return-void
.end method

.method final a(Landroid/content/SharedPreferences$Editor;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 602
    invoke-direct {p0}, Lcom/google/android/location/reporting/config/p;->c()Lcom/google/android/location/reporting/config/ReportingConfig;

    move-result-object v2

    .line 603
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 604
    invoke-direct {p0}, Lcom/google/android/location/reporting/config/p;->c()Lcom/google/android/location/reporting/config/ReportingConfig;

    move-result-object v3

    .line 606
    iget-object v4, p0, Lcom/google/android/location/reporting/config/p;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/location/reporting/config/p;->g:Lcom/google/android/location/reporting/b/f;

    const/4 v1, 0x0

    invoke-virtual {v3}, Lcom/google/android/location/reporting/config/ReportingConfig;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/config/AccountConfig;

    invoke-static {v0}, Lcom/google/android/location/reporting/service/a;->a(Lcom/google/android/location/reporting/config/AccountConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    invoke-interface {v5, v4}, Lcom/google/android/location/reporting/b/f;->d(Landroid/content/Context;)V

    :cond_1
    :goto_1
    const-string v0, "GcoreUlrLong"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2, v3}, Lcom/google/android/location/reporting/config/n;->a(Lcom/google/android/location/reporting/config/ReportingConfig;Lcom/google/android/location/reporting/config/ReportingConfig;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " at "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/location/reporting/config/p;->e:Lcom/google/android/gms/common/util/i;

    invoke-interface {v4}, Lcom/google/android/gms/common/util/i;->a()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GcoreUlrLong"

    invoke-static {v1, v0}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {v2, v3, p5}, Lcom/google/android/location/reporting/b/j;->a(Lcom/google/android/location/reporting/config/ReportingConfig;Lcom/google/android/location/reporting/config/ReportingConfig;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lcom/google/android/location/reporting/config/p;->a(ZZ)V

    iget-object v0, p0, Lcom/google/android/location/reporting/config/p;->g:Lcom/google/android/location/reporting/b/f;

    iget-object v1, p0, Lcom/google/android/location/reporting/config/p;->b:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/location/reporting/b/f;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/location/reporting/config/p;->f:Lcom/google/android/location/reporting/service/d;

    invoke-interface {v0}, Lcom/google/android/location/reporting/service/d;->a()V

    .line 608
    return-void

    .line 606
    :cond_3
    invoke-virtual {v2}, Lcom/google/android/location/reporting/config/ReportingConfig;->h()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v3}, Lcom/google/android/location/reporting/config/ReportingConfig;->h()Ljava/util/Map;

    move-result-object v7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/reporting/config/AccountConfig;

    invoke-static {v1}, Lcom/google/android/location/reporting/service/a;->a(Lcom/google/android/location/reporting/config/AccountConfig;)Z

    move-result v9

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/reporting/config/AccountConfig;

    invoke-static {v1}, Lcom/google/android/location/reporting/service/a;->a(Lcom/google/android/location/reporting/config/AccountConfig;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v9, :cond_4

    :goto_2
    if-eqz v0, :cond_1

    invoke-interface {v5, v4, v0}, Lcom/google/android/location/reporting/b/f;->a(Landroid/content/Context;Landroid/accounts/Account;)V

    goto/16 :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method

.method final a(Ljava/lang/String;Lcom/google/android/location/reporting/config/i;)V
    .locals 6

    .prologue
    .line 468
    iget-boolean v0, p2, Lcom/google/android/location/reporting/config/i;->f:Z

    if-eqz v0, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    iget-object v3, p2, Lcom/google/android/location/reporting/config/i;->a:Landroid/accounts/Account;

    .line 472
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p2, Lcom/google/android/location/reporting/config/i;->n:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v3}, Lcom/google/android/location/reporting/config/p;->j(Landroid/accounts/Account;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-boolean v0, p2, Lcom/google/android/location/reporting/config/i;->e:Z

    if-eqz v0, :cond_2

    .line 474
    iget-object v0, p0, Lcom/google/android/location/reporting/config/p;->g:Lcom/google/android/location/reporting/b/f;

    iget-object v1, p0, Lcom/google/android/location/reporting/config/p;->b:Landroid/content/Context;

    iget-object v4, p2, Lcom/google/android/location/reporting/config/i;->i:Ljava/lang/Boolean;

    iget-object v5, p2, Lcom/google/android/location/reporting/config/i;->j:Ljava/lang/Boolean;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/location/reporting/b/f;->a(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 477
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/reporting/config/p;->g:Lcom/google/android/location/reporting/b/f;

    invoke-interface {v0, v3, p1}, Lcom/google/android/location/reporting/b/f;->a(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/location/reporting/config/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "defined"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/android/location/reporting/config/Conditions;)Z
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/google/android/location/reporting/config/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/location/reporting/config/Conditions;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/location/reporting/config/i;Ljava/lang/String;)Z
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 434
    iget-object v0, p2, Lcom/google/android/location/reporting/config/i;->a:Landroid/accounts/Account;

    .line 435
    iget-boolean v1, p2, Lcom/google/android/location/reporting/config/i;->d:Z

    if-nez v1, :cond_1

    .line 436
    iget-object v1, p2, Lcom/google/android/location/reporting/config/i;->c:Ljava/lang/Long;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "update("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") must provide reference version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    iget-object v1, p2, Lcom/google/android/location/reporting/config/i;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v0}, Lcom/google/android/location/reporting/config/p;->l(Landroid/accounts/Account;)J

    move-result-wide v8

    cmp-long v1, v4, v8

    if-gez v1, :cond_1

    .line 439
    const-string v1, "GCoreUlr"

    const/4 v3, 0x4

    invoke-static {v1, v3}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    const-string v1, "GCoreUlr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UserPreferences.updateEditor("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): aborting to preserve local change at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/google/android/location/reporting/config/p;->l(Landroid/accounts/Account;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_0
    :goto_0
    return v2

    .line 448
    :cond_1
    const-string v1, "GCoreUlr"

    invoke-static {v1, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 449
    const-string v1, "GCoreUlr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UserPreferences.update("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/reporting/config/p;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 452
    invoke-virtual {p0, v1, p2}, Lcom/google/android/location/reporting/config/p;->a(Landroid/content/SharedPreferences$Editor;Lcom/google/android/location/reporting/config/i;)V

    .line 453
    iget v3, p2, Lcom/google/android/location/reporting/config/i;->h:I

    if-ne v3, v7, :cond_3

    move v3, v6

    :goto_1
    invoke-static {v0}, Lcom/google/android/location/reporting/config/p;->i(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-object v0, p0

    move-object v4, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/location/reporting/config/p;->a(Landroid/content/SharedPreferences$Editor;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0, p1, p2}, Lcom/google/android/location/reporting/config/p;->a(Ljava/lang/String;Lcom/google/android/location/reporting/config/i;)V

    move v2, v6

    .line 459
    goto :goto_0

    :cond_3
    move v3, v2

    .line 453
    goto :goto_1
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/google/android/location/reporting/config/p;->c:Lcom/google/android/location/reporting/config/e;

    invoke-interface {v0}, Lcom/google/android/location/reporting/config/e;->a()Lcom/google/android/location/reporting/config/Conditions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/Conditions;->j()Z

    move-result v0

    return v0
.end method
