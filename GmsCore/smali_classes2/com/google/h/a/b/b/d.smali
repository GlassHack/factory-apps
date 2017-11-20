.class public final Lcom/google/h/a/b/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/h/a/b/b/t;


# instance fields
.field private a:Lcom/google/h/a/b/a/b;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x7

    return v0
.end method

.method public final a()Lcom/google/h/a/b/a/b;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/h/a/b/b/d;->a:Lcom/google/h/a/b/a/b;

    return-object v0
.end method

.method public final a(JFFZ)V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public final a(JIF)V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public final a(JLcom/google/h/a/b/a/b;)V
    .locals 1

    .prologue
    .line 28
    iput-object p3, p0, Lcom/google/h/a/b/b/d;->a:Lcom/google/h/a/b/a/b;

    .line 29
    iput-wide p1, p0, Lcom/google/h/a/b/b/d;->b:J

    .line 30
    return-void
.end method

.method public final a(JLcom/google/h/a/b/b/u;)V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/google/h/a/b/b/d;->b:J

    return-wide v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/h/a/b/b/d;->a:Lcom/google/h/a/b/a/b;

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/h/a/b/b/d;->b:J

    .line 57
    return-void
.end method
