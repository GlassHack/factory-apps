.class public final Lcom/google/c/a/by;
.super Lcom/google/c/a/bw;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lcom/google/c/a/by;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/c/a/by;

    invoke-direct {v0}, Lcom/google/c/a/by;-><init>()V

    sput-object v0, Lcom/google/c/a/by;->a:Lcom/google/c/a/by;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/c/a/bw;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b(Ljava/lang/Object;)I
    .locals 1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected final b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
