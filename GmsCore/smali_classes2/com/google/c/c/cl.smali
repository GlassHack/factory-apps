.class abstract Lcom/google/c/c/cl;
.super Lcom/google/c/c/ck;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2076
    invoke-direct {p0}, Lcom/google/c/c/ck;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 2083
    invoke-static {p0, p1}, Lcom/google/c/c/dn;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 2079
    invoke-static {p0}, Lcom/google/c/c/dn;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method
