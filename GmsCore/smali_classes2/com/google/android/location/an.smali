.class final Lcom/google/android/location/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/k/g;


# instance fields
.field final synthetic a:Lcom/google/android/location/am;


# direct methods
.method constructor <init>(Lcom/google/android/location/am;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/android/location/an;->a:Lcom/google/android/location/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/location/k/b;Lcom/google/g/a/b/b/a;)V
    .locals 8

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x1

    .line 174
    iget-object v0, p0, Lcom/google/android/location/an;->a:Lcom/google/android/location/am;

    invoke-static {v0}, Lcom/google/android/location/am;->a(Lcom/google/android/location/am;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-interface {p1}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v2

    .line 181
    iget-object v0, p0, Lcom/google/android/location/an;->a:Lcom/google/android/location/am;

    iget-object v0, v0, Lcom/google/android/location/am;->b:Lcom/google/android/location/b/w;

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/google/android/location/b/w;->a(Lcom/google/g/a/b/b/a;ZJ)V

    .line 184
    iget-object v0, p0, Lcom/google/android/location/an;->a:Lcom/google/android/location/am;

    iget-object v0, v0, Lcom/google/android/location/am;->F:Lcom/google/android/location/h/w;

    invoke-interface {p1}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v2

    sget-boolean v4, Lcom/google/android/location/j/a;->c:Z

    if-eqz v4, :cond_2

    const-string v4, "ModelStateManager"

    const-string v5, "Received GLS response (maybe update mac to cluster mappings)..."

    invoke-static {v4, v5}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, v0, Lcom/google/android/location/h/w;->a:Lcom/google/android/location/b/p;

    invoke-virtual {v0, p2, v2, v3}, Lcom/google/android/location/b/p;->a(Lcom/google/g/a/b/b/a;J)Z

    .line 187
    iget-object v0, p0, Lcom/google/android/location/an;->a:Lcom/google/android/location/am;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/location/am;->l:Lcom/google/g/a/b/b/a;

    .line 188
    iget-object v0, p0, Lcom/google/android/location/an;->a:Lcom/google/android/location/am;

    invoke-interface {p1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/location/am;->n:J

    .line 191
    iget-object v0, p0, Lcom/google/android/location/an;->a:Lcom/google/android/location/am;

    invoke-virtual {v0, p1}, Lcom/google/android/location/am;->b(Lcom/google/android/location/k/b;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/location/an;->a:Lcom/google/android/location/am;

    iget-object v2, v0, Lcom/google/android/location/am;->K:Lcom/google/android/location/y;

    iget-object v0, p0, Lcom/google/android/location/an;->a:Lcom/google/android/location/am;

    iget-wide v4, v0, Lcom/google/android/location/am;->n:J

    if-eqz p2, :cond_3

    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/google/android/location/y;->a()V

    const-wide/16 v0, 0x0

    iput-wide v0, v2, Lcom/google/android/location/y;->b:J

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    iput-wide v4, v2, Lcom/google/android/location/y;->b:J

    iget-boolean v0, v2, Lcom/google/android/location/y;->e:Z

    if-eqz v0, :cond_7

    iget-boolean v0, v2, Lcom/google/android/location/y;->c:Z

    if-nez v0, :cond_0

    iget-object v0, v2, Lcom/google/android/location/y;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v6, :cond_5

    iget-object v0, v2, Lcom/google/android/location/y;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_5
    iget-object v0, v2, Lcom/google/android/location/y;->a:Ljava/util/LinkedList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, v2, Lcom/google/android/location/y;->a:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, v2, Lcom/google/android/location/y;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt v0, v6, :cond_0

    iget-object v0, v2, Lcom/google/android/location/y;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x927c0

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_6

    const-string v0, "GlsFailureTracker"

    const-string v3, "Entering back-off mode."

    invoke-static {v0, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iput-boolean v1, v2, Lcom/google/android/location/y;->c:Z

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v2}, Lcom/google/android/location/y;->a()V

    goto/16 :goto_0
.end method
