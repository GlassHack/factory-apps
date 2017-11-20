.class final Lcom/google/android/location/places/ui/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/google/android/location/places/ui/ae;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/ui/ae;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lcom/google/android/location/places/ui/am;->b:Lcom/google/android/location/places/ui/ae;

    iput-object p2, p0, Lcom/google/android/location/places/ui/am;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/android/location/places/ui/am;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 597
    return-void
.end method
