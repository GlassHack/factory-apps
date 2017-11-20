.class public final Lcom/google/android/gms/auth/authzen/keyservice/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/security/KeyPair;

.field final c:J

.field final d:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/security/KeyPair;JJ)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/auth/authzen/keyservice/i;->a:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/google/android/gms/auth/authzen/keyservice/i;->b:Ljava/security/KeyPair;

    .line 22
    iput-wide p3, p0, Lcom/google/android/gms/auth/authzen/keyservice/i;->c:J

    .line 23
    iput-wide p5, p0, Lcom/google/android/gms/auth/authzen/keyservice/i;->d:J

    .line 24
    return-void
.end method
