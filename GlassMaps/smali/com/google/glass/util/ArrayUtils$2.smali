.class final Lcom/google/glass/util/ArrayUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field final synthetic val$array:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/glass/util/ArrayUtils$2;->val$array:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/glass/util/ArrayUtils$2;->val$array:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
