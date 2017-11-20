.class final Lcom/google/h/a/b/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/h/a/b/b/ad;


# instance fields
.field private final a:[D

.field private final b:I


# direct methods
.method public constructor <init>([DI)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/google/h/a/b/b/f;->a:[D

    .line 137
    iput p2, p0, Lcom/google/h/a/b/b/f;->b:I

    .line 138
    return-void
.end method


# virtual methods
.method public final a(I)D
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/h/a/b/b/f;->a:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/google/h/a/b/b/f;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
