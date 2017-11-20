.class final Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder$1;
.super Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;
.source "SearchIndexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;->getDigitsQueryBuilder(Ljava/lang/String;)Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$commonCriteria:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder$1;->val$commonCriteria:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public addToken(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 469
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 471
    :cond_0
    const-string v1, "content:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    const-string v1, "* "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-static {p2}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "normalizedToken":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 477
    const-string v1, " OR name:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    const/16 v1, 0x2a

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 482
    :cond_1
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder$1;->val$commonCriteria:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    return-void
.end method
