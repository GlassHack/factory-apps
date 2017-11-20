.class public final Lcom/google/c/a/x;
.super Lcom/google/c/a/u;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lcom/google/c/a/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/google/c/a/x;

    invoke-direct {v0}, Lcom/google/c/a/x;-><init>()V

    sput-object v0, Lcom/google/c/a/x;->a:Lcom/google/c/a/x;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/c/a/u;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 89
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected final b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method
