.class final Lcom/google/android/gms/fitness/n/ai;
.super Lcom/google/android/gms/fitness/n/aq;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/n/ac;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/n/ac;)V
    .locals 1

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/gms/fitness/n/ai;->a:Lcom/google/android/gms/fitness/n/ac;

    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/fitness/n/aq;-><init>(Lcom/google/android/gms/fitness/n/ac;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/ai;->a:Lcom/google/android/gms/fitness/n/ac;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/n/ac;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 65
    return-void
.end method
