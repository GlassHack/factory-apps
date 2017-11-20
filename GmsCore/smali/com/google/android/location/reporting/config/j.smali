.class public final Lcom/google/android/location/reporting/config/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/accounts/Account;

.field b:Ljava/lang/Boolean;

.field c:Ljava/lang/Long;

.field public d:Z

.field e:Z

.field public f:Z

.field public g:Z

.field public h:I

.field public i:Ljava/lang/Boolean;

.field public j:Ljava/lang/Boolean;

.field public k:Ljava/lang/Long;

.field l:Ljava/lang/Integer;

.field public m:Ljava/lang/Boolean;

.field n:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>(Landroid/accounts/Account;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-boolean v0, p0, Lcom/google/android/location/reporting/config/j;->d:Z

    .line 243
    iput-boolean v0, p0, Lcom/google/android/location/reporting/config/j;->e:Z

    .line 245
    iput-boolean v0, p0, Lcom/google/android/location/reporting/config/j;->f:Z

    .line 247
    iput-boolean v0, p0, Lcom/google/android/location/reporting/config/j;->g:Z

    .line 249
    iput v0, p0, Lcom/google/android/location/reporting/config/j;->h:I

    .line 265
    const-string v0, "null account"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iput-object p1, p0, Lcom/google/android/location/reporting/config/j;->a:Landroid/accounts/Account;

    .line 267
    return-void
.end method

.method synthetic constructor <init>(Landroid/accounts/Account;B)V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/google/android/location/reporting/config/j;-><init>(Landroid/accounts/Account;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/location/reporting/config/i;
    .locals 1

    .prologue
    .line 270
    new-instance v0, Lcom/google/android/location/reporting/config/i;

    invoke-direct {v0, p0}, Lcom/google/android/location/reporting/config/i;-><init>(Lcom/google/android/location/reporting/config/j;)V

    return-object v0
.end method

.method public final a(I)Lcom/google/android/location/reporting/config/j;
    .locals 1

    .prologue
    .line 365
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/config/j;->l:Ljava/lang/Integer;

    .line 366
    return-object p0
.end method

.method public final a(J)Lcom/google/android/location/reporting/config/j;
    .locals 1

    .prologue
    .line 293
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/config/j;->c:Ljava/lang/Long;

    .line 294
    return-object p0
.end method

.method public final a(Lcom/google/android/location/reporting/a;)Lcom/google/android/location/reporting/config/j;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p1, Lcom/google/android/location/reporting/a;->b:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/location/reporting/config/j;->i:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/google/android/location/reporting/a;->c:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/location/reporting/config/j;->j:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/google/android/location/reporting/a;->a:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/location/reporting/config/j;->k:Ljava/lang/Long;

    iget v0, p1, Lcom/google/android/location/reporting/a;->d:I

    invoke-virtual {p0, v0}, Lcom/google/android/location/reporting/config/j;->a(I)Lcom/google/android/location/reporting/config/j;

    move-result-object v0

    return-object v0
.end method

.method public final a(Z)Lcom/google/android/location/reporting/config/j;
    .locals 1

    .prologue
    .line 323
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/google/android/location/reporting/config/j;->h:I

    .line 324
    return-object p0

    .line 323
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()Lcom/google/android/location/reporting/config/j;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 397
    iput-boolean v1, p0, Lcom/google/android/location/reporting/config/j;->e:Z

    .line 398
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/config/j;->b:Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/location/reporting/config/j;->a(Z)Lcom/google/android/location/reporting/config/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/location/reporting/config/j;->b(Z)Lcom/google/android/location/reporting/config/j;

    move-result-object v0

    iput-boolean v1, v0, Lcom/google/android/location/reporting/config/j;->d:Z

    return-object v0
.end method

.method public final b(Z)Lcom/google/android/location/reporting/config/j;
    .locals 1

    .prologue
    .line 375
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/config/j;->n:Ljava/lang/Boolean;

    .line 376
    return-object p0
.end method
