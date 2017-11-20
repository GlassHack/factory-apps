.class public final Lcom/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/a/a/e;

.field private static b:Lcom/a/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/a/a/a/q;

    invoke-direct {v0}, Lcom/a/a/a/q;-><init>()V

    sput-object v0, Lcom/a/a/d;->a:Lcom/a/a/e;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/a/a/d;->b:Lcom/a/a/g;

    return-void
.end method

.method public static a([B)Lcom/a/a/c;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/a/a/a/l;->a(Ljava/lang/Object;Lcom/a/a/b/c;)Lcom/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/a/a/e;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/a/a/d;->a:Lcom/a/a/e;

    return-object v0
.end method
