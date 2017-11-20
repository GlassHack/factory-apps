.class final Lcom/google/c/c/df;
.super Lcom/google/c/c/bd;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/c/de;


# instance fields
.field final a:Lcom/google/c/c/de;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/c/c/de;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/google/c/c/bd;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    iput-object p3, p0, Lcom/google/c/c/df;->a:Lcom/google/c/c/de;

    .line 118
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/c/c/de;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/c/c/df;->a:Lcom/google/c/c/de;

    return-object v0
.end method
