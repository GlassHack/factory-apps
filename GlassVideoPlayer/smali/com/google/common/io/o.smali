.class final Lcom/google/common/io/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/io/f;


# instance fields
.field final synthetic a:Ljava/util/zip/Checksum;


# direct methods
.method constructor <init>(Ljava/util/zip/Checksum;)V
    .locals 0

    .prologue
    .line 835
    iput-object p1, p0, Lcom/google/common/io/o;->a:Ljava/util/zip/Checksum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()Ljava/lang/Long;
    .locals 3

    .prologue
    .line 843
    iget-object v0, p0, Lcom/google/common/io/o;->a:Ljava/util/zip/Checksum;

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    .line 844
    iget-object v2, p0, Lcom/google/common/io/o;->a:Ljava/util/zip/Checksum;

    invoke-interface {v2}, Ljava/util/zip/Checksum;->reset()V

    .line 845
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 835
    invoke-direct {p0}, Lcom/google/common/io/o;->b()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final a([BII)Z
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/google/common/io/o;->a:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/zip/Checksum;->update([BII)V

    .line 839
    const/4 v0, 0x1

    return v0
.end method
