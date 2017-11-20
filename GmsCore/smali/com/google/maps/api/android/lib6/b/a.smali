.class public final Lcom/google/maps/api/android/lib6/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/g/a/c/f;


# instance fields
.field private final a:Lcom/google/g/a/c/f;


# direct methods
.method public constructor <init>(Lcom/google/g/a/c/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/b/a;->a:Lcom/google/g/a/c/f;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/a;->a:Lcom/google/g/a/c/f;

    invoke-interface {v0, p1, p2}, Lcom/google/g/a/c/f;->a(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    return-object v0
.end method
