.class public final Lcom/google/android/location/h/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/location/k/b;

.field private final b:Lcom/google/android/location/b/am;


# direct methods
.method public constructor <init>(Lcom/google/android/location/b/am;Lcom/google/android/location/k/b;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/android/location/h/a;->b:Lcom/google/android/location/b/am;

    .line 39
    iput-object p2, p0, Lcom/google/android/location/h/a;->a:Lcom/google/android/location/k/b;

    .line 40
    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/location/f/g;Ljava/util/Map;J)Lcom/google/android/location/b/a;
    .locals 3

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/google/android/location/f/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/google/android/location/h/a;->b:Lcom/google/android/location/b/am;

    invoke-virtual {v1, v0, p3, p4}, Lcom/google/android/location/b/am;->a(Ljava/lang/Object;J)Lcom/google/android/location/b/a;

    move-result-object v1

    .line 123
    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 124
    iget-object v2, v1, Lcom/google/android/location/b/a;->d:Ljava/lang/Object;

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_0
    return-object v1
.end method
