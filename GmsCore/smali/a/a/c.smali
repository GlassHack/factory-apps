.class public final La/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a/b;


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, La/a/c;->a:Ljava/lang/Object;

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;B)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, La/a/c;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 66
    invoke-static {}, La/a/a;->b()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/c;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 68
    :try_start_0
    invoke-static {}, La/a/a;->b()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, La/a/c;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
