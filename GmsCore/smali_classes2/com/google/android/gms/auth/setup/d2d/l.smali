.class final Lcom/google/android/gms/auth/setup/d2d/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 698
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/l;->c:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;

    iput-object p2, p0, Lcom/google/android/gms/auth/setup/d2d/l;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/setup/d2d/l;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 701
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/l;->c:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/l;->a:[Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/l;->b:Ljava/lang/String;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;[Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 702
    return-void
.end method
