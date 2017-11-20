.class final Lcom/google/h/a/b/b/am;
.super Lcom/google/h/a/b/b/c;
.source "SourceFile"


# instance fields
.field private final b:Lcom/google/h/a/b/b/t;

.field private final c:Ljava/util/EnumSet;


# direct methods
.method public constructor <init>(Lcom/google/h/a/b/b/t;Ljava/util/EnumSet;)V
    .locals 2

    .prologue
    .line 685
    invoke-direct {p0}, Lcom/google/h/a/b/b/c;-><init>()V

    .line 686
    iput-object p1, p0, Lcom/google/h/a/b/b/am;->b:Lcom/google/h/a/b/b/t;

    .line 687
    iput-object p2, p0, Lcom/google/h/a/b/b/am;->c:Ljava/util/EnumSet;

    .line 688
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/h/a/b/b/t;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/google/h/a/b/b/c;->a:[Lcom/google/h/a/b/b/t;

    .line 689
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/h/a/b/a/b;
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/google/h/a/b/b/am;->b:Lcom/google/h/a/b/b/t;

    invoke-interface {v0}, Lcom/google/h/a/b/b/t;->a()Lcom/google/h/a/b/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLcom/google/h/a/b/a/b;)V
    .locals 3

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/h/a/b/b/am;->c:Ljava/util/EnumSet;

    iget-object v1, p3, Lcom/google/h/a/b/a/b;->b:Lcom/google/h/a/b/a/c;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/google/h/a/b/b/am;->b:Lcom/google/h/a/b/b/t;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/h/a/b/b/t;->a(JLcom/google/h/a/b/a/b;)V

    .line 696
    :cond_0
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/google/h/a/b/b/am;->b:Lcom/google/h/a/b/b/t;

    invoke-interface {v0}, Lcom/google/h/a/b/b/t;->b()J

    move-result-wide v0

    return-wide v0
.end method
