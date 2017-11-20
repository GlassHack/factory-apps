.class public final Lcom/google/m/b/a/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/m/b/a/b/f;


# instance fields
.field protected final a:Lcom/google/m/b/a/b/c;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 264
    sget-object v0, Lcom/google/m/b/a/b/a;->a:Lcom/google/m/b/a/b/c;

    const-wide/16 v2, 0x384

    invoke-direct {p0, v0, v2, v3}, Lcom/google/m/b/a/b/d;-><init>(Lcom/google/m/b/a/b/c;J)V

    .line 265
    return-void
.end method

.method private constructor <init>(Lcom/google/m/b/a/b/c;J)V
    .locals 2

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const-wide/16 v0, 0x384

    iput-wide v0, p0, Lcom/google/m/b/a/b/d;->b:J

    .line 269
    iput-object p1, p0, Lcom/google/m/b/a/b/d;->a:Lcom/google/m/b/a/b/c;

    .line 270
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/m/b/a/b/d;->a:Lcom/google/m/b/a/b/c;

    invoke-interface {v0}, Lcom/google/m/b/a/b/c;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 275
    iget-wide v2, p0, Lcom/google/m/b/a/b/d;->b:J

    div-long/2addr v0, v2

    return-wide v0
.end method
