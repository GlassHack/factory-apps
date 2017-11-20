.class final Lcom/google/android/gms/wearable/node/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/wearable/ConnectionConfiguration;

.field public final b:Lcom/google/android/gms/wearable/node/y;

.field public final c:Ljava/util/concurrent/Future;

.field public final d:Ljava/util/concurrent/Future;

.field public final e:Ljava/io/InputStream;

.field public final f:Ljava/io/OutputStream;

.field final synthetic g:Lcom/google/android/gms/wearable/node/ay;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/wearable/node/ay;Lcom/google/android/gms/wearable/ConnectionConfiguration;Lcom/google/android/gms/wearable/node/y;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/android/gms/wearable/node/ba;->g:Lcom/google/android/gms/wearable/node/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p2, p0, Lcom/google/android/gms/wearable/node/ba;->a:Lcom/google/android/gms/wearable/ConnectionConfiguration;

    .line 130
    iput-object p3, p0, Lcom/google/android/gms/wearable/node/ba;->b:Lcom/google/android/gms/wearable/node/y;

    .line 131
    iput-object p4, p0, Lcom/google/android/gms/wearable/node/ba;->c:Ljava/util/concurrent/Future;

    .line 132
    iput-object p5, p0, Lcom/google/android/gms/wearable/node/ba;->d:Ljava/util/concurrent/Future;

    .line 133
    iput-object p6, p0, Lcom/google/android/gms/wearable/node/ba;->e:Ljava/io/InputStream;

    .line 134
    iput-object p7, p0, Lcom/google/android/gms/wearable/node/ba;->f:Ljava/io/OutputStream;

    .line 135
    return-void
.end method
