.class final Lcom/google/android/location/places/ui/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/location/places/ui/ao;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/ui/ao;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/android/location/places/ui/aq;->a:Lcom/google/android/location/places/ui/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/location/places/ui/aq;->a:Lcom/google/android/location/places/ui/ao;

    invoke-static {v0}, Lcom/google/android/location/places/ui/ao;->f(Lcom/google/android/location/places/ui/ao;)Lcom/google/android/location/places/ui/at;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/places/ui/at;->W()V

    .line 130
    return-void
.end method
