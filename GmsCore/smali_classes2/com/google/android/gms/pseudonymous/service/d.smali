.class public final Lcom/google/android/gms/pseudonymous/service/d;
.super Lcom/google/android/gms/pseudonymous/a/e;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/gms/pseudonymous/a/e;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/google/android/gms/pseudonymous/service/d;->a:Landroid/content/Context;

    .line 72
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/pseudonymous/a/a;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/gms/pseudonymous/service/d;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/pseudonymous/service/PseudonymousIdIntentService;->a(Landroid/content/Context;Lcom/google/android/gms/pseudonymous/a/a;)V

    .line 77
    return-void
.end method

.method public final a(Lcom/google/android/gms/pseudonymous/a/a;Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/gms/pseudonymous/service/d;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/pseudonymous/service/PseudonymousIdIntentService;->a(Landroid/content/Context;Lcom/google/android/gms/pseudonymous/a/a;Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;)V

    .line 82
    return-void
.end method
