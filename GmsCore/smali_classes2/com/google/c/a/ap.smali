.class final Lcom/google/c/a/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/a/au;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/c/a/ap;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/c/a/am;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lcom/google/c/a/aq;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/c/a/aq;-><init>(Lcom/google/c/a/ap;Lcom/google/c/a/am;Ljava/lang/CharSequence;)V

    return-object v0
.end method
