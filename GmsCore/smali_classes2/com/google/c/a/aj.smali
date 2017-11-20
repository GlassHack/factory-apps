.class public final Lcom/google/c/a/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/c/a/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 326
    const-string v0, ","

    invoke-static {v0}, Lcom/google/c/a/ab;->a(Ljava/lang/String;)Lcom/google/c/a/ab;

    move-result-object v0

    sput-object v0, Lcom/google/c/a/aj;->a:Lcom/google/c/a/ab;

    return-void
.end method

.method public static a(Lcom/google/c/a/ai;)Lcom/google/c/a/ai;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/google/c/a/al;

    invoke-direct {v0, p0}, Lcom/google/c/a/al;-><init>(Lcom/google/c/a/ai;)V

    return-object v0
.end method

.method public static a(Ljava/util/Collection;)Lcom/google/c/a/ai;
    .locals 2

    .prologue
    .line 227
    new-instance v0, Lcom/google/c/a/ak;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/c/a/ak;-><init>(Ljava/util/Collection;B)V

    return-object v0
.end method
