.class public final Lcom/google/android/location/os/v;
.super Lcom/google/android/location/os/af;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/location/os/e;


# direct methods
.method public constructor <init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 463
    iput-object p1, p0, Lcom/google/android/location/os/v;->b:Lcom/google/android/location/os/e;

    iput-object p5, p0, Lcom/google/android/location/os/v;->a:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/location/os/af;-><init>(Lcom/google/android/location/os/c;J)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/PrintWriter;)V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/android/location/os/v;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 467
    return-void
.end method
