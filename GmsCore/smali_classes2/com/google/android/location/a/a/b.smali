.class public final Lcom/google/android/location/a/a/b;
.super Lcom/google/android/location/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/location/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .prologue
    .line 26
    invoke-static {p1, p2}, Lcom/google/android/location/a/c;->a(J)V

    .line 27
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 2

    .prologue
    .line 18
    if-eqz p6, :cond_0

    .line 19
    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/location/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 23
    :goto_0
    return-void

    .line 21
    :cond_0
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/location/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method
